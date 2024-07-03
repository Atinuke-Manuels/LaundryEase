import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'account_info_item.dart';

class AccountInfoDesktopTablet extends StatelessWidget {
  const AccountInfoDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Account Info", style: TextStyle(fontWeight: FontWeight.w100, fontSize: 20),),
        centerTitle: true,
        leading: const Icon(Icons.arrow_circle_left, color: Color(0xFF344EAF),),
        backgroundColor: Colors.white,
        actions: [
          TextButton(onPressed: (){}, child: const Text("Done", style: TextStyle(color: Color(0xFF344EAF), fontWeight: FontWeight.w600),))
        ],
      ),
      body: SingleChildScrollView(
        reverse: false,
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
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
                  GestureDetector(
                    onTap: (){},
                    child: const Text(
                      "Change profile picture",
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w200, color: Color(0xFF344EAF)),
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                ],
              ),
            ),
            AccountInfoItem(title: "Username", hintText: "Jaden Allen", onPress: (){},),
            AccountInfoItem(title: "Location", hintText: "Lagos Island Lagos",onPress: (){}),
            AccountInfoItem(title: "Mobile Number", hintText: "07098989898", onPress: (){}),
            AccountInfoItem(title: "Email Address", hintText: "ease@yahoo.com", onPress: (){}),
          ],
        ),
      ),
    );
  }
}
