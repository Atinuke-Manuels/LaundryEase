// lib/theme.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: const Color(0xFF0F26A6),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  fontFamily: 'Poppins',
  textTheme: TextTheme(
    bodyLarge: TextStyle(fontSize: 14.sp, fontFamily: 'Poppins'),
    bodyMedium: TextStyle(fontSize: 14.sp, fontFamily: 'Poppins'),
    displayLarge: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
    displayMedium: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
    displaySmall: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
    headlineMedium: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
    headlineSmall: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
    titleLarge: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
  ),
);
