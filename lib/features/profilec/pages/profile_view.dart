import 'package:flutter/material.dart';

import '../../../profile/screens/profile_page.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfilePage(),
    );
  }
}
