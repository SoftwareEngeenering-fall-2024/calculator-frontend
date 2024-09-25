import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart' as colors;

final ThemeData light = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: colors.purple,
    onPrimary: Colors.white,
    secondary: colors.cardTint,
    onSecondary: Colors.black,
    error: colors.error,
    onError: Colors.white,
    surface: Colors.black,
    onSurface: Colors.white,
  ),

  drawerTheme: const DrawerThemeData(
    backgroundColor: Color(0xFF171717),
  ),

  // scrollbarTheme: ScrollbarThemeData(
  //     thickness: WidgetStatePropertyAll(100),
  //     thumbColor: WidgetStatePropertyAll(Color(0x42FFFFFF)),
  //     trackColor: WidgetStatePropertyAll(Colors.white)),

  ///elevatedButton
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(0),
      textStyle: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400),
      backgroundColor: colors.grey,
      foregroundColor: Colors.white,
      shape: const CircleBorder(),
    ),
  ),

  ///TextTheme
  textTheme: textTheme,
);

final TextTheme textTheme = TextTheme(
// displayLarge: ,
  displayMedium: GoogleFonts.sourceSerif4(
    fontSize: 32,
    fontWeight: FontWeight.w600,
  ),
  displaySmall: GoogleFonts.sourceSerif4(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  ),
// headlineLarge: ,
  headlineMedium: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w600),
  headlineSmall: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w600),
// bodyLarge: ,
  bodyMedium: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400),
// bodySmall: ,
// labelLarge: ,
  labelMedium: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400),
// labelSmall: ,
);
