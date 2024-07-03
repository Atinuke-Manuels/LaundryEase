import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/onboardingFirstSet/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932), // Set your design size here (width, height)
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Laundry Ease',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            fontFamily: 'Poppins', // This will use the regular font
            textTheme: TextTheme(
              bodyLarge: TextStyle(fontSize: 14.sp, fontFamily: 'Poppins'), // You can specify the font family for each text style
              bodyMedium: TextStyle(fontSize: 14.sp, fontFamily: 'Poppins'),
              displayLarge: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
              displayMedium: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
              displaySmall: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
              headlineMedium: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
              headlineSmall: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
              titleLarge: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
            ),
          ),
          home: const Onboarding(),
        );
      },
    );
  }
}