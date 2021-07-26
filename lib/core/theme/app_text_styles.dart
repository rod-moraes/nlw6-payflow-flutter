import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/core/core.dart';

abstract class AppTextStyles {
  TextStyle get titleHome;
  TextStyle get titleRegular;
  TextStyle get titleBoldHeading;
  TextStyle get titleBoldBackground;
  TextStyle get titleListTile;
  TextStyle get trailingRegular;
  TextStyle get trailingBold;
  TextStyle get buttonPrimary;
  TextStyle get buttonHeading;
  TextStyle get buttonGray;
  TextStyle get buttonBackground;
  TextStyle get buttonBoldPrimary;
  TextStyle get buttonBoldHeading;
  TextStyle get buttonBoldGray;
  TextStyle get buttonBoldBackground;
  TextStyle get captionBackground;
  TextStyle get captionShape;
  TextStyle get captionBody;
  TextStyle get captionBoldBackground;
  TextStyle get captionBoldShape;
  TextStyle get captionBoldBody;
  TextStyle get subtitleShape;
  TextStyle get input;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get titleHome => GoogleFonts.lexendDeca(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.heading,
      );
  @override
  TextStyle get titleRegular => GoogleFonts.lexendDeca(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.background,
      );
  @override
  TextStyle get titleBoldHeading => GoogleFonts.lexendDeca(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.heading,
      );
  @override
  TextStyle get titleBoldBackground => GoogleFonts.lexendDeca(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.background,
      );
  @override
  TextStyle get titleListTile => GoogleFonts.lexendDeca(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.heading,
      );
  @override
  TextStyle get trailingRegular => GoogleFonts.lexendDeca(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.heading,
      );
  @override
  TextStyle get trailingBold => GoogleFonts.lexendDeca(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.heading,
      );
  @override
  TextStyle get buttonPrimary => GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.primary,
      );
  @override
  TextStyle get buttonHeading => GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.heading,
      );
  @override
  TextStyle get buttonGray => GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.grey,
      );
  @override
  TextStyle get buttonBackground => GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.background,
      );
  @override
  TextStyle get buttonBoldPrimary => GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.primary,
      );
  @override
  TextStyle get buttonBoldHeading => GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.heading,
      );
  @override
  TextStyle get buttonBoldGray => GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.grey,
      );
  @override
  TextStyle get buttonBoldBackground => GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.background,
      );

  @override
  TextStyle get input => GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.input,
      );
  @override
  TextStyle get captionBackground => GoogleFonts.lexendDeca(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.background,
      );
  @override
  TextStyle get captionShape => GoogleFonts.lexendDeca(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.shape,
      );
  @override
  TextStyle get captionBody => GoogleFonts.lexendDeca(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.body,
      );
  @override
  TextStyle get captionBoldBackground => GoogleFonts.lexendDeca(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.background,
      );
  @override
  TextStyle get captionBoldShape => GoogleFonts.lexendDeca(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.shape,
      );
  @override
  TextStyle get captionBoldBody => GoogleFonts.lexendDeca(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.body,
      );
  @override
  TextStyle get subtitleShape => GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.shape,
      );
}
