import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/theme/colors.dart';

ThemeData get theme => ThemeData.from(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: primarySwatch,
      ),
      textTheme: GoogleFonts.exoTextTheme().copyWith(
        headlineLarge: TextStyle(
          fontSize: 38,
        ),
      ),
    );
