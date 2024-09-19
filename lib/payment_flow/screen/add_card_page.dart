import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/long_custom_button.dart';
import 'new_card_page.dart';

class AddCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Card",
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
      body: SingleChildScrollView( // Wrap with SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Card Details container
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: const Color(0xFF287AF8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/payment_images/visa_logo.png',
                          height: 35.h,
                          color: Colors.white,
                        ),
                        const Icon(Icons.more_horiz, color: Colors.white),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '****',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            letterSpacing: 2.0,
                          ),
                        ),
                        Text(
                          '****',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            letterSpacing: 2.0,
                          ),
                        ),
                        Text(
                          '****',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            letterSpacing: 2.0,
                          ),
                        ),
                        Text(
                          '9924',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'CARD HOLDER',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          'Expiry Date',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Morayo Joy Egbayelo',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '05/24',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 42.0.h),
              // Input fields for card number, expiry date, and CVV
              const Text("Card Number", style: TextStyle(fontSize: 16),),
              SizedBox(
                height: 44.h,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 8.0),
                      child: SvgPicture.asset(
                        "assets/payment_images/visa.svg",
                        width: 57.w,
                        height: 26.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400]!, width: 1.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CardNumberFormatter(),
                  ],
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start, // Ensures proper vertical alignment
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Expiry Date", style: TextStyle(fontSize: 16),),
                        SizedBox(
                          height: 44.h,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'MM/YY',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey[400]!, width: 1.0),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              ExpiryDateFormatter(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("CVV", style: TextStyle(fontSize: 16),),
                        SizedBox(
                          height: 44.h,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '123',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey[400]!, width: 1.0),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(3),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              // Card Name field
              const Text("Card Name", style: TextStyle(fontSize: 16)),
              SizedBox(
                height: 44.h,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Card Name',
                    hintText: 'Enter cardholder name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[400]!, width: 1.0),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(height: 20.0),
              // Toggle for saving card details
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Save card details for future payment',
                      style: TextStyle(fontSize: 10, color: Color(0xFF125DD3), fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 16.w,
                      height: 8.h,
                      child: Switch(
                        value: true,
                        activeColor: const Color(0xFF125DD3),
                        onChanged: (value) {
                          // Implement toggle logic
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60.0),
              // Save button
              LongCustomButton(
                title: "Pay",
                backgroundColor: const Color(0xFF0F26A6),
                foregroundColor: Colors.white,
                onPressed: () {
                  // Handle button press
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NewCardPage()));
                },
              ),
              const SizedBox(height: 20.0),
              LongCustomButton(
                title: "Show order",
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF0F26A6),
                borderColor: const Color(0xFF0F26A6),
                borderRadius: BorderRadius.circular(8),
                onPressed: () {
                  // Handle button press
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NewCardPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

}

// Custom formatters for card number and expiry date
class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text.replaceAll(' ', '');
    if (newText.length > 16) {
      return oldValue;
    }
    var buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      if (i % 4 == 0 && i != 0) {
        buffer.write(' ');
      }
      buffer.write(newText[i]);
    }
    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.fromPosition(
        TextPosition(offset: buffer.length),
      ),
    );
  }
}

class ExpiryDateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = newValue.text.replaceAll('/', '');
    if (newText.length > 4) {
      return oldValue;
    }
    var buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      if (i == 2) {
        buffer.write('/');
      }
      buffer.write(newText[i]);
    }
    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.fromPosition(
        TextPosition(offset: buffer.length),
      ),
    );
  }
}