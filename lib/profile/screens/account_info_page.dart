import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/profile/widgets/account_info_desktop_tablet.dart';
import 'package:laundry_ease_upgrade/profile/widgets/account_info_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AccountInfoPage extends StatelessWidget {
  const AccountInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const AccountInfoMobile(),
      tablet: (BuildContext context) => const AccountInfoDesktopTablet(),
    );
  }
}
