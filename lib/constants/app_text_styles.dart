import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  static TextStyle get titleGradient => GoogleFonts.mulish(
      fontSize: 26.0,
      fontWeight: FontWeight.bold,
      foreground: Paint()
        ..shader = const LinearGradient(
          colors: <Color>[AppColors.chestnutRose, AppColors.heliotrope],
        ).createShader(const Rect.fromLTWH(100.0, 100.0, 100.0, 100.0)));
}
