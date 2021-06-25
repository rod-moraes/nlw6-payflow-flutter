import 'package:flutter/material.dart';
import 'package:payflow/core/core.dart';
import 'package:payflow/modules/barcode_scanner/barcode_scanner_controller.dart';
import 'package:payflow/modules/barcode_scanner/barcode_scanner_status.dart';
import 'package:payflow/shared/widgets/bottom_sheet/bottom_sheet_widget.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  final controller = BarcodeScannerController();

  @override
  void initState() {
    controller.getAvailableCameras();
    controller.statusNotifier.addListener(() {
      if (controller.status.hasBarcode) {
        Navigator.pushReplacementNamed(context, "/insert_boleto");
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.colors.primary,
      child: SafeArea(
        top: true,
        bottom: true,
        left: true,
        right: true,
        child: Stack(
          children: [
            ValueListenableBuilder<BarcodeScannerStatus>(
                valueListenable: controller.statusNotifier,
                builder: (_, status, __) {
                  if (status.showCamera) {
                    return Container(
                      color: Colors.blue,
                      child: controller.cameraController!.buildPreview(),
                    );
                  } else {
                    return Container();
                  }
                }),
            RotatedBox(
              quarterTurns: 1,
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.black,
                  title: Text(
                    "Escaneie o código de barras do boleto",
                    style: AppTheme.textStyles.buttonBackground,
                  ),
                  leading: BackButton(
                    color: AppTheme.colors.background,
                  ),
                ),
                body: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.transparent,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                bottomNavigationBar: SetLabelButtonsWidget(
                  primaryLabel: "Inserir código do boleto",
                  secondaryLabel: "Adicionar da galeria",
                  onTapPrimary: () {},
                  onTapSecondary: () {},
                ),
              ),
            ),
            ValueListenableBuilder<BarcodeScannerStatus>(
                valueListenable: controller.statusNotifier,
                builder: (_, status, __) {
                  if (status.hasError) {
                    return Container(
                      child: BottomSheetWidget(
                        primaryLabel: "Escanear novamente",
                        secondaryLabel: "Digitar código",
                        onTapPrimary: () {
                          controller.scanWithCamera();
                          setState(() {});
                        },
                        onTapSecondary: () {},
                        title:
                            "Não foi possível identificar um código de barras.",
                        subtitle:
                            "Tente escanear novamente ou digite o código do seu boleto.",
                      ),
                    );
                  } else {
                    return Container();
                  }
                }),
          ],
        ),
      ),
    );
  }
}