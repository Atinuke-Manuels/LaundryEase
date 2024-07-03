import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final Widget icon;
  final Function() onTap;

  const ProfileItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(
            height: 35.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20.h, width: 20.w, child: icon),
                  const SizedBox(
                    width: 14,
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      title,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: onTap,
                child: const Icon(
                  Icons.chevron_right,
                  size: 28,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}