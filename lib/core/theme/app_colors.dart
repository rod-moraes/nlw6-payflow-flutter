import 'package:flutter/material.dart';

abstract class AppColors {
  Color get primary;
  Color get grey;
  Color get delete;
  Color get heading;
  Color get body;
  Color get stroke;
  Color get shape;
  Color get background;
  Color get input;
}

class AppColorsDefault implements AppColors {
  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get body => const Color(0xFF706E7A);

  @override
  Color get delete => const Color(0xFFe83f5B);

  @override
  Color get grey => const Color(0xFF585666);

  @override
  Color get heading => const Color(0xFF585666);

  @override
  Color get primary => const Color(0xFFFF941A);

  @override
  Color get shape => const Color(0xFFFAFAFC);

  @override
  Color get stroke => const Color(0xFFE3E3E6);

  @override
  Color get input => const Color(0xFFb1b0b8);
}
