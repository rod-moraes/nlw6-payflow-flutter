import 'package:flutter/material.dart';

import 'package:payflow/core/core.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BottomSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final String secondaryLabel;
  final VoidCallback onTapPrimary;
  final VoidCallback onTapSecondary;
  final String title;
  final String subtitle;
  const BottomSheetWidget({
    Key? key,
    required this.primaryLabel,
    required this.secondaryLabel,
    required this.onTapPrimary,
    required this.onTapSecondary,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Material(
          child: Container(
            color: Colors.transparent,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Text.rich(
                        TextSpan(
                          text: title + "\n",
                          style: AppTheme.textStyles.buttonBoldHeading,
                          children: [
                            TextSpan(
                              text: subtitle,
                              style: AppTheme.textStyles.buttonHeading,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SetLabelButtonsWidget(
                      primaryLabel: primaryLabel,
                      secondaryLabel: secondaryLabel,
                      onTapPrimary: onTapPrimary,
                      onTapSecondary: onTapSecondary,
                      enablePrimaryColor: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
