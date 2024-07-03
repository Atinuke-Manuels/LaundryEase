import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/profile/widgets/mobile_profile_page.dart';
import 'package:laundry_ease_upgrade/profile/widgets/profile_page_desktop_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const ProfilePageMobile(),
      tablet: (BuildContext context) => const ProfilePageDesktopTablet(),
    );
  }
}
