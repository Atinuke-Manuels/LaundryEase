import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/sign_up/widgets/email_verification/email_verification_desktop_tablet.dart';
import 'package:laundry_ease_upgrade/sign_up/widgets/email_verification/email_verification_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const EmailVerificationMobile(),
      tablet: (BuildContext context) => const EmailVerificationDesktopTablet(),
    );
  }
}
