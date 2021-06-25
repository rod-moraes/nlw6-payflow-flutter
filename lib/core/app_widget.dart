import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payflow/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:payflow/modules/insert_boleto/insert_boleto_page.dart';
import 'package:payflow/shared/model/user_model.dart';
import '../modules/home/home_page.dart';
import '../modules/login/login_page.dart';
import '../modules/splash/splash_page.dart';
import 'theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: AppTheme.colors.primary),
      title: "PayFlow",
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/login": (context) => const LoginPage(),
        "/home": (context) => HomePage(
            user: UserModel(
                name: "rodRIgo", photoUrl: "https://picsum.photos/200")),
        "/barcode": (context) => BarcodeScannerPage(),
        "/insert_boleto": (context) => InsertBoletoPage(),
      },
    );
  }
}
