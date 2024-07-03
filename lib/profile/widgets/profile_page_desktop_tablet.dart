import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundry_ease_upgrade/profile/widgets/profile_item.dart';
import 'package:laundry_ease_upgrade/profile/widgets/show_logout_dialogue.dart';

import '../../common/long_custom_button.dart';
import '../../gen/assets.gen.dart';
import 'account_info_mobile.dart';

class ProfilePageDesktopTablet extends StatelessWidget {
  const ProfilePageDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Positioned(
              top: 0,
              child: Container(
                width: 430.w,
                height: 328.h,
                decoration: const BoxDecoration(
                  color: Color(0xFF344EAF),
                ),
              )),
          Positioned(
              top: -20,
              left: -240,
              child: Image.asset(
                Assets.profile.leftCurve.path,
                width: 378.83.w,
                height: 242.h,
              )),
          Positioned(
              top: 124.h,
              left: 460,
              child: Image.asset(
                Assets.profile.rightCurve.path,
                width: 208.83.w,
                height: 222.h,
              )),
          Positioned(
              top: 98.h,
              left: 6.w,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.arrow_circle_left,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              )),
          Positioned(
              top: 212.h,
              left: 27.w,
              right: 27.w,
              child: Container(
                width: 374.w,
                height: 578.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                child: SingleChildScrollView(
                  reverse: false,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16.h,
                      ),
                      SizedBox(
                        height: 100.h,
                        width: 96.w,
                        child: Icon(
                          Icons.account_circle,
                          size: min(100.h, 96.w),
                          color: const Color(0xFF344EAF),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      const Text(
                        "Jade Allen",
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      ProfileItem(
                          title: "Track My Order",
                          icon: const Icon(
                            Icons.check_circle_outline,
                            size: 20,
                          ),
                          onTap: () {}),
                      ProfileItem(
                          title: "Account Info",
                          icon: const Icon(
                            Icons.account_circle,
                            size: 20,
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const AccountInfoMobile()));
                          }),
                      ProfileItem(
                          title: "Review",
                          icon: const Icon(
                            Icons.reviews_outlined,
                            size: 20,
                          ),
                          onTap: () {}),
                      ProfileItem(
                          title: "Settings",
                          icon: const Icon(
                            Icons.settings,
                            size: 20,
                          ),
                          onTap: () {}),
                      ProfileItem(
                          title: "Logout",
                          icon: const Icon(
                            Icons.exit_to_app_outlined,
                            size: 20,
                          ),
                        onTap: () => showLogoutDialog(context),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
            bottom: 20.h,
            left: 27.w,
            right: 27.w,
            child: LongCustomButton(
              title: "Back to home",
              backgroundColor: const Color(0xFF0F26A6),
              foregroundColor: Colors.white,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
