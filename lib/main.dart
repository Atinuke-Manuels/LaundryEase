import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/password_sceens/password/enter_otp.dart';
import 'package:laundry_ease_upgrade/password_sceens/password/forgot_password.dart';
import 'package:laundry_ease_upgrade/password_sceens/password/reset_password.dart';
import 'package:laundry_ease_upgrade/password_sceens/password/reset_password_success.dart';
import 'package:laundry_ease_upgrade/sign_up/screens/get_started.dart';


import 'features/onboarddingFirstSet/onboarding.dart';
import 'features/onboarddingFirstSet/onboarding1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laundry Ease',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const onboarding(),
    );
  }
}

