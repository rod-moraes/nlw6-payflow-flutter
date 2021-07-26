import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payflow/core/core.dart';
import 'package:payflow/shared/widgets/input_text/input_text_widget.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class InsertBoletoPage extends StatefulWidget {
  final String? barcode;
  const InsertBoletoPage({Key? key, this.barcode}) : super(key: key);

  @override
  _InsertBoletoPageState createState() => _InsertBoletoPageState();
}

class _InsertBoletoPageState extends State<InsertBoletoPage> {
  final moneyInputTextController =
      MoneyMaskedTextController(leftSymbol: "R\$", decimalSeparator: ",");

  final dueDateInputTextController = MaskedTextController(mask: "00/00/0000");
  final barcodeInputTexxtController = TextEditingController();

  @override
  void initState() {
    if (widget.barcode != null) {
      barcodeInputTexxtController.text = widget.barcode!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      appBar: AppBar(
        backgroundColor: AppTheme.colors.background,
        elevation: 0,
        leading: BackButton(color: AppTheme.colors.input),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 93, vertical: 24),
            child: Text("Preencha os dados do boleto",
                style: AppTheme.textStyles.titleBoldHeading,
                textAlign: TextAlign.center),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                InputTextWidget(
                  label: "Nome do boleto",
                  icon: Icons.description_outlined,
                  onChanged: (value) {},
                ),
                InputTextWidget(
                  controller: dueDateInputTextController,
                  label: "Vencimento",
                  icon: FontAwesomeIcons.timesCircle,
                  onChanged: (value) {},
                ),
                InputTextWidget(
                  controller: moneyInputTextController,
                  label: "Valor",
                  icon: FontAwesomeIcons.wallet,
                  onChanged: (value) {},
                ),
                InputTextWidget(
                  controller: barcodeInputTexxtController,
                  label: "Código",
                  icon: FontAwesomeIcons.barcode,
                  onChanged: (value) {},
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: SetLabelButtonsWidget(
        primaryLabel: "Cancelar",
        secondaryLabel: "Cadastrar",
        onTapPrimary: () {
          Navigator.pop(context);
        },
        onTapSecondary: () {},
        enableSecondaryColor: true,
      ),
    );
  }
}
