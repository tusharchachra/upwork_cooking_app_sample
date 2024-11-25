import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeCustom {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      useMaterial3: true,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        toolbarHeight: 71.h,
        color: Colors.pink,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.pink,
        ),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20.w,
        ),
        foregroundColor: Colors.white,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      textTheme: TextTheme(
        displaySmall: TextStyle(
          color: Colors.white70,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
        ),
        bodySmall: TextStyle(
          color: Colors.white,
          fontSize: 10.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
            backgroundColor: const WidgetStatePropertyAll(Colors.pink),
            foregroundColor: const WidgetStatePropertyAll(Colors.white),
            padding: WidgetStatePropertyAll(
              EdgeInsets.symmetric(vertical: 12.7.h),
            ),
            minimumSize: WidgetStatePropertyAll(Size(200.w, 56.h)),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.r),
              ),
            ),
            textStyle: WidgetStatePropertyAll(
              TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            )),
      ),
    );
  }
}
