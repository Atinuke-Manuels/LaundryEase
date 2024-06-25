import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/sign_up/widgets/get_started_widgets/get_started-mobile.dart';
import 'package:laundry_ease_upgrade/sign_up/widgets/get_started_widgets/get_started_desktop_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const GetStartedMobile(),
      tablet: (BuildContext context) => const GetStartedDesktopTablet(),
    );
  }
}
