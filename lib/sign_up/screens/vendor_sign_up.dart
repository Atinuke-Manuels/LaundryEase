import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/sign_up/widgets/vendor_sign_up_widgets/vendor_sign_up_desktop_tablet.dart';
import 'package:laundry_ease_upgrade/sign_up/widgets/vendor_sign_up_widgets/vendor_sign_up_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class VendorSignUp extends StatelessWidget {
  const VendorSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const VendorSignUpMobile(),
      tablet: (BuildContext context) => const VendorSignUpDesktopTablet(),
    );
  }
}
