import 'dart:ui';

// ignore: implementation_imports
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

TextStyle styleT(
  double? fSize, {
  FontWeight? fWeight,
  Color? color,
  TextDecoration? decoration,
  double? letterSpacing,
}) {
  return GoogleFonts.poppins(
    fontSize: fSize ?? 12,
    fontWeight: fWeight ?? FontWeight.w400,
    color: color ?? AppColors.black,
    decoration: decoration,
  );
}

//Text sizes
const double fTiny = 28;
const double fbuttonin = 18;

//Text Weights
const FontWeight kLight = FontWeight.w400;
