// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

ThemeData primaryTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: CustomColor.kblack,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    scaffoldBackgroundColor: CustomColor.kwhite,
    textTheme: GoogleFonts.interTextTheme(),
    drawerTheme: DrawerThemeData(backgroundColor: CustomColor.kwhite),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: Colors.transparent));
