import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laundry_ease_upgrade/payment_flow/screen/new_card_page.dart';

import '../../common/long_custom_button.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  String _selectedPaymentMethod = 'visa'; // Initial selection

  // List of payment methods and corresponding SVG paths
  final List<Map<String, String>> paymentMethods = [
    {"icon": "assets/payment_images/visa.svg", "value": "visa"},
    {"icon": "assets/payment_images/master.svg", "value": "mastercard"},
    {"icon": "assets/payment_images/paypal.svg", "value": "paypal"},
    {"icon": "assets/payment_images/bank.svg", "value": "bank"},
    {"icon": "add", "value": "add_card"}, // Adding the 'Add card' option
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment Method",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_circle_left,
            color: const Color(0xFF0F26A6),
            size: 24.w,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Expanded( // Expands to take up remaining space, allowing the button to stay at the bottom
              child: ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(height: 41.h),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0.w),
                    child: const Text(
                      "Choose payment method.",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: 31.h),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: paymentMethods.length,
                    itemBuilder: (context, index) {
                      final paymentMethod = paymentMethods[index];

                      // Check if the item is the "Add card" option
                      if (paymentMethod['icon'] == "add") {
                        return ListTile(
                          leading: const Icon(Icons.add, size: 24),
                          title: Text(
                            "Add debit/credit card",
                            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                          ),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () {
                            // Handle tap event for adding a card
                          },
                        );
                      } else {
                        return ListTile(
                          leading: SvgPicture.asset(
                            paymentMethod['icon']!,
                            width: 57.w,
                            height: 26.h,
                          ),
                          trailing: Radio<String>(
                            value: paymentMethod['value']!,
                            groupValue: _selectedPaymentMethod,
                            activeColor: const Color(0xFF0F26A6),
                            onChanged: (String? value) {
                              setState(() {
                                _selectedPaymentMethod = value!;
                              });
                            },
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
            LongCustomButton(
              title: "Add Card",
              backgroundColor: const Color(0xFF0F26A6),
              foregroundColor: Colors.white,
              onPressed: () {
                // Handle button press
                Navigator.push(context, MaterialPageRoute(builder: (context) => const NewCardPage()));
              },
            ),
            SizedBox(height: 167.h), // Adding space between the button and the bottom of the screen
          ],
        ),
      ),
    );
  }
}
