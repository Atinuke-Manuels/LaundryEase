import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/common/long_custom_button.dart';
import 'package:laundry_ease_upgrade/password_sceens/password/reset_password.dart';
import '../../auth_services/otp_auth.dart';

class EnterOtp extends StatefulWidget {
  const EnterOtp({super.key});

  @override
  State<EnterOtp> createState() => _EnterOtpState();
}

class _EnterOtpState extends State<EnterOtp> {
  final TextEditingController _otpController1 = TextEditingController();
  final TextEditingController _otpController2 = TextEditingController();
  final TextEditingController _otpController3 = TextEditingController();
  final TextEditingController _otpController4 = TextEditingController();

  final String email = "user@example.com"; // Replace this with the actual email passed to the screen

  void _submitOtp() {
    final otp = _otpController1.text +
        _otpController2.text +
        _otpController3.text +
        _otpController4.text;

    if (otp.length < 4) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter the full OTP.')),
      );
      return;
    }

    verifyOtp(
      otp,
      // email,
          () {
        // On success, navigate to the reset password screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ResetPassword()),
        );
      },
          (errorMessage) {
        // On error, show an error message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(errorMessage)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 100),
            Center(child: Image.asset("assets/otp_img.png")),
            const SizedBox(height: 40),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter OTP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Enter the 4 digits verification code sent to \nyour email."),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                _buildOtpField(_otpController1),
                const SizedBox(width: 10),
                _buildOtpField(_otpController2),
                const SizedBox(width: 10),
                _buildOtpField(_otpController3),
                const SizedBox(width: 10),
                _buildOtpField(_otpController4),
              ],
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Resend code in 00:25sec",
                style: TextStyle(color: Colors.black26),
              ),
            ),
            const SizedBox(height: 30),
            LongCustomButton(
              title: "Submit",
              backgroundColor: const Color(0xFF0F26A6),
              foregroundColor: Colors.white,
              onPressed: _submitOtp,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOtpField(TextEditingController controller) {
    return SizedBox(
      width: 60,
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.black12),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.black12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.black12),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          fillColor: Colors.white,
          filled: true,
        ),
        textAlign: TextAlign.center,
        maxLength: 1,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
