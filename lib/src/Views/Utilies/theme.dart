import 'package:cheval_broker/src/Views/Utilies/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Apptheme {
    static var lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
       backgroundColor: Appcolors.appColors.shade50),
        scaffoldBackgroundColor:Appcolors.appColors.shade50,
      brightness: Brightness.light,
      canvasColor:const Color(0xFFFFFFFF),
      splashColor: const Color(0xFF00ADBF),
      hintColor: const Color(0xFF005D67),
      textTheme: TextTheme(
          displayMedium: GoogleFonts.roboto(
            color: Appcolors.appColors.shade900,
            fontSize: 42,
            fontWeight: FontWeight.w700
          ),
          displaySmall: GoogleFonts.roboto(
            color: Appcolors.appColors.shade900,
            fontSize: 42,
            fontWeight: FontWeight.w700
          ),
          headlineLarge: GoogleFonts.roboto(
            color: Appcolors.appColors.shade900,
            fontWeight: FontWeight.w400,
            fontSize: 30,
          ),
          headlineMedium: GoogleFonts.roboto(
            color: Appcolors.appColors.shade100,
            fontWeight: FontWeight.w800,
            fontSize: 28,
          ),
          headlineSmall: GoogleFonts.roboto(
            color: Appcolors.appColors.shade900,
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
          titleLarge: GoogleFonts.roboto(
            color: Appcolors.appColors.shade800,
            fontWeight: FontWeight.w400,
            fontSize: 28,
          ),  
          titleMedium:GoogleFonts.roboto(
            color: Appcolors.appColors.shade800,
            fontWeight: FontWeight.w500,
            fontSize:24,
            ),
            titleSmall: GoogleFonts.roboto(
            color: Appcolors.appColors.shade100,
            fontSize:22,
            fontWeight:FontWeight.w400,
            ),
            bodyLarge: GoogleFonts.roboto(
            color:Appcolors.appColors.shade100,
            fontSize:16,
            fontWeight:FontWeight.w600,
            ),
             bodyMedium: GoogleFonts.roboto(
              color: Colors.white,
            fontSize:13,
            fontWeight: FontWeight.w600,
            ),
             bodySmall: GoogleFonts.roboto(
            fontSize:10,
            fontWeight:FontWeight.w600,
            ),
            labelLarge: GoogleFonts.roboto(
              color:Appcolors.appColors.shade200,
              fontSize:28,
              fontWeight: FontWeight.w300,
            ),
            labelMedium: GoogleFonts.roboto(
              // color:AppColors.appColors.shade200,
              fontSize:18,
              fontWeight: FontWeight.w400,
            ),
            labelSmall: GoogleFonts.roboto(
              // color:AppColors.appColors.shade200,
              fontSize:12,
              fontWeight: FontWeight.w400,
            ),
          ),

      colorScheme: ColorScheme.light(surface: Appcolors.appColors.shade50),
    );
}