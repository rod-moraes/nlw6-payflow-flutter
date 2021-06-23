import 'package:flutter/material.dart';
import 'package:payflow/core/core.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Stack(
        children: [
          Center(child: Image.asset(AppTheme.images.union)),
          Center(child: Image.asset(AppTheme.images.logoFull)),
        ],
      ),
    );
  }
}
