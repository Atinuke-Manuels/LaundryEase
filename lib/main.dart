// lib/main.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundry_ease_upgrade/payment_flow/screen/payment_method.dart';
import 'dart:async';
import 'common/theme.dart';


import 'features/onboardingFirstSet/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Laundry Ease',
          debugShowCheckedModeBanner: false,
          theme: appTheme,  // Use the theme from the separate file
          // home: FutureBuilder(
          //   future: Future.delayed(const Duration(seconds: 3)),
          //   builder: (context, snapshot) {
          //     if (snapshot.connectionState == ConnectionState.done) {
          //       return const Onboarding();
          //     } else {
          //       return Container(
          //         color: Colors.white,
          //         child: Center(
          //           child: Image.asset('assets/images/splash_screen2.png', width: double.infinity),
          //         ),
          //       );
          //     }
          //   },
          // ),
          home: const PaymentMethod(),
        );
      },
    );
  }
}
