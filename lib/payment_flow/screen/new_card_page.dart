import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundry_ease_upgrade/common/long_custom_button.dart';
import 'package:laundry_ease_upgrade/payment_flow/screen/add_card_page.dart';

class NewCardPage extends StatelessWidget {
  const NewCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "New Card",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        centerTitle: true,
        leading: FittedBox(
          fit: BoxFit.contain,
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Cancel",
              style: TextStyle(
                color: Color(0xFF0F26A6),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 41.h),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Card number",
                      hintStyle: const TextStyle(fontSize: 16),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "assets/payment_images/new_card_img.png",
                          width: 24.w,
                          height: 24.h,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: const BorderSide(
                          color: Color(0xFF0F26A6),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: const BorderSide(
                          color: Color(0xFF0F26A6),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r),
                        borderSide: const BorderSide(
                          color: Color(0xFF0F26A6),
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 41.h),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                const Color(0xFFC1C3C8)),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Expiry Date",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                const Color(0xFFC1C3C8)),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          child: const Text(
                            "Secure Code",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Column(
              children: [
                Text(
                  "LaundryEase may charge N50 to confirm your card details. This is immediately refunded.",
                  style: TextStyle(fontSize: 14.sp),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40.h),
                LongCustomButton(
                  title: "Add Card",
                  backgroundColor: const Color(0xFF0F26A6),
                  foregroundColor: Colors.white,
                  onPressed: () {
                    // Handle button press
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddCardScreen()));
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 167.h), // Adjust this value as needed
        ],
      ),
    );
  }
}
