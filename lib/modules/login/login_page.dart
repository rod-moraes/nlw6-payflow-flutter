import 'package:flutter/material.dart';
import 'package:payflow/core/core.dart';
import 'package:payflow/modules/login/login_controller.dart';
import 'package:payflow/shared/widgets/social_login_button/social_login_button_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.36,
              color: AppTheme.colors.primary,
            ),
            Positioned(
              top: size.height * 0.07,
              left: 0,
              right: 0,
              child: Image.asset(
                AppTheme.images.person,
                width: size.height * 0.25,
                height: (373 / 208) * size.height * 0.25,
              ),
            ),
            Positioned(
              bottom: size.height * 0.06,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Image.asset(AppTheme.images.logomini),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.2,
                        vertical: size.height * 0.04),
                    child: Text(
                      "Organize seus boletos em um só lugar",
                      style: AppTheme.textStyles.titleHome,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.10),
                    child: SocialButtonWidget(
                      label: "Entrar com Google",
                      onTap: () {
                        controller.googleSignIn(context);
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
