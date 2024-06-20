import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/login/screens/login_desktop_tablet.dart';
import 'package:laundry_ease_upgrade/login/screens/login_mobile_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const LoginMobileScreen(),
      tablet: (BuildContext context) => const LoginDesktopTablet(),
    );
  }
}
