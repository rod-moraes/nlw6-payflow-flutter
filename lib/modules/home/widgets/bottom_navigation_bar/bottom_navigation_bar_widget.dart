import 'package:flutter/material.dart';

import 'package:payflow/core/core.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final Function(int index) onTap;
  const BottomNavigationBarWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  onTap(0);
                },
                icon: Icon(
                  Icons.home,
                  color: AppTheme.colors.primary,
                )),
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                  color: AppTheme.colors.primary,
                  borderRadius: BorderRadius.circular(5)),
              child: IconButton(
                  onPressed: () {
                    onTap(1);
                  },
                  icon: Icon(
                    Icons.add_box_outlined,
                    color: AppTheme.colors.background,
                  )),
            ),
            IconButton(
                onPressed: () {
                  onTap(2);
                },
                icon: Icon(
                  Icons.description_outlined,
                  color: AppTheme.colors.body,
                )),
          ],
        ),
      ),
    );
  }
}
