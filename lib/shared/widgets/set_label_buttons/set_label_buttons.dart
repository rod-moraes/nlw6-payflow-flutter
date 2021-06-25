import 'package:flutter/material.dart';
import 'package:payflow/core/core.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtonsWidget extends StatelessWidget {
  final String primaryLabel;
  final String secondaryLabel;
  final VoidCallback onTapPrimary;
  final VoidCallback onTapSecondary;
  final bool enablePrimaryColor;
  const SetLabelButtonsWidget({
    Key? key,
    required this.primaryLabel,
    required this.secondaryLabel,
    required this.onTapPrimary,
    required this.onTapSecondary,
    this.enablePrimaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.colors.shape,
        border: Border(
          top: BorderSide(color: AppTheme.colors.stroke),
        ),
      ),
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onPressed: onTapPrimary,
              style:
                  enablePrimaryColor ? AppTheme.textStyles.buttonPrimary : null,
            ),
          ),
          VerticalDivider(
            width: 1,
            color: AppTheme.colors.stroke,
            thickness: 1,
          ),
          Expanded(
            child: LabelButton(
              label: secondaryLabel,
              onPressed: onTapSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
