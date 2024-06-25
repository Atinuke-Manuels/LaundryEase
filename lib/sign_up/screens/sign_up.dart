import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/sign_up/widgets/sign_up_widgets/sign_up_desktop_tablet.dart';
import 'package:laundry_ease_upgrade/sign_up/widgets/sign_up_widgets/sign_up_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const SignUpMobile(),
      tablet: (BuildContext context) => const SignUpDesktopTablet(),
    );
  }
}
