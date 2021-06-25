import 'package:flutter/material.dart';
import 'package:payflow/core/core.dart';
import 'package:payflow/shared/auth/auth_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.colors.background,
        body: Stack(
          children: [
            Center(child: Image.asset(AppTheme.images.union)),
            Center(child: Image.asset(AppTheme.images.logoFull)),
          ],
        ),
      ),
    );
  }
}
