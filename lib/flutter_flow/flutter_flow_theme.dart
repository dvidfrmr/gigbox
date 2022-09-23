// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color gray;
  late Color lineColor;
  late Color lightGray;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFF0156E4);
  late Color secondaryColor = const Color(0xFFE8A32C);
  late Color tertiaryColor = const Color(0xFF00C2C1);
  late Color alternate = const Color(0xFFFF3F4A);
  late Color primaryBackground = const Color(0xFFFFFFFF);
  late Color secondaryBackground = const Color(0xFFEEEEEE);
  late Color primaryText = const Color(0xFF00064F);
  late Color secondaryText = const Color(0xFF5A5A5A);

  late Color gray = Color(0xFF7D7D7D);
  late Color lineColor = Color(0xFFEFEFF5);
  late Color lightGray = Color(0xFFAFAFAF);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Exo 2';
  TextStyle get title1 => GoogleFonts.getFont(
        'Exo 2',
        color: theme.primaryText,
        fontWeight: FontWeight.w900,
        fontSize: 32,
      );
  String get title2Family => 'Exo 2';
  TextStyle get title2 => GoogleFonts.getFont(
        'Exo 2',
        color: theme.secondaryText,
        fontWeight: FontWeight.w800,
        fontSize: 26,
      );
  String get title3Family => 'Exo 2';
  TextStyle get title3 => GoogleFonts.getFont(
        'Exo 2',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      );
  String get subtitle1Family => 'Exo 2';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Exo 2',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 19,
      );
  String get subtitle2Family => 'Exo 2';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Exo 2',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 17,
      );
  String get bodyText1Family => 'Exo 2';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Exo 2',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 15,
      );
  String get bodyText2Family => 'Exo 2';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Exo 2',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 13,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
