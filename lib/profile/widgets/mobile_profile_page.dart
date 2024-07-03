import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';

class ProfilePageMobile extends StatelessWidget {
  const ProfilePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              top: -10,
              left: -20,
              child: Image.asset(Assets.profile.leftCurve.path, width: 208.83.w, height: 222.h,)
          ),
          Positioned(
            top: 124.h,
              left: 235,
              child: Image.asset(Assets.profile.rightCurve.path, width: 208.83.w, height: 222.h,)
          ),
           Positioned(
               top: 98.h,
               left: 26.w,
               child: Row(
            children: [
              GestureDetector(
                onTap: (){},
                child: Icon(Icons.arrow_circle_left, color: Colors.white, size: 24.h,),
              ),
              SizedBox(width: 15.w,),
               Text("Profile", style: TextStyle(color: Colors.white, fontSize: 20.sp, fontWeight: FontWeight.w600 ,),)
            ],
          ))

        ],
      ),
    );
  }
}
