import 'package:flutter/material.dart';

// Colors
Color cPrimary = const Color(0xFF2F58CD);
Color cSecondary = const Color(0xFF4E31AA);
Color cAccent = const Color(0xFFA459D1);
Color cLinear = const Color(0xFFCDF0EA);
Color cWhite = Colors.white;
Color cBlack = Colors.black;
Color cGrey = Colors.grey;
Color cError = Colors.red;
Color cTextWhite = Colors.white;
Color cTextBlack = Colors.black;
Color cTextBlue = Colors.blueGrey;

// Font Weights
FontWeight fLight = FontWeight.w300;
FontWeight fRegular = FontWeight.w400;
FontWeight fMedium = FontWeight.w500;
FontWeight fSemiBold = FontWeight.w600;
FontWeight fBold = FontWeight.w700;

// Text Sizes
double tsHeadLine1 = 32;
double tsHeadLine2 = 28;
double tsHeadLine3 = 24;
double tsHeadLine4 = 20;
double tsSubtitle1 = 16;
double tsSubtitle2 = 14;
double tsBody1 = 16;
double tsBody2 = 14;
double tsCaption = 12;

// Vertical Spacing
SizedBox get vsXSmall => const SizedBox(height: 4);
SizedBox get vsSmall => const SizedBox(height: 8);
SizedBox get vsMedium => const SizedBox(height: 16);
SizedBox get vsLarge => const SizedBox(height: 24);
SizedBox get vsXLarge => const SizedBox(height: 32);
SizedBox customvs(double height) => SizedBox(height: height);

// Horizontal Spacing
SizedBox get hsXSmall => const SizedBox(width: 4);
SizedBox get hsSmall => const SizedBox(width: 8);
SizedBox get hsMedium => const SizedBox(width: 16);
SizedBox get hsLarge => const SizedBox(width: 24);
SizedBox get hsXLarge => const SizedBox(width: 32);
SizedBox customhs(double width) => SizedBox(width: width);

// Text Style
TextStyle poppinsStyle({
  required double fontSize,
  required FontWeight fontWeight,
  required Color color,
  double? height,
  TextDecoration? decoration,
}) {
  return TextStyle(
    fontFamily: 'Poppins',
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    height: height,
    decoration: decoration,
  );
}
