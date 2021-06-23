import 'package:flutter/material.dart';

import 'package:payflow/core/core.dart';

class SocialButtonWidget extends StatelessWidget {
  final String imagePath;
  final String label;
  final GestureTapCallback onTap;
  const SocialButtonWidget({
    Key? key,
    this.imagePath = "",
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String image = imagePath.isNotEmpty ? imagePath : AppTheme.images.google;
    return ListTile(
      onTap: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(color: AppTheme.colors.stroke),
      ),
      tileColor: AppTheme.colors.shape,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(
              image,
              width: 25,
              height: 25,
            ),
          ),
          SizedBox(
              height: 56,
              child:
                  VerticalDivider(thickness: 1, color: AppTheme.colors.stroke)),
          Expanded(
            child: Center(
              child: Text(
                label,
                style: AppTheme.textStyles.buttonGray,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
