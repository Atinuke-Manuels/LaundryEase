import 'package:flutter/material.dart';
import '../../../auth_services/email_auth.dart';
import '../../../common/long_custom_button.dart';
import '../../../gen/assets.gen.dart';


class EmailVerificationMobile extends StatefulWidget {
  const EmailVerificationMobile({super.key});

  @override
  _EmailVerificationMobileState createState() => _EmailVerificationMobileState();
}

class _EmailVerificationMobileState extends State<EmailVerificationMobile> {
  void _resendEmail() {
    // You can replace 'user@example.com' with the actual email of the user
    resendVerificationEmail(
      'user@example.com',
          () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Verification email resent successfully.')),
        );
      },
          (errorMessage) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(errorMessage)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          reverse: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.email.path, width: 320, height: 300),
                const Text(
                  "Verify your email",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  "We have sent a mail requesting you to verify \n your email",
                  style: TextStyle(fontSize: 12.0, height: 1.5),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.09),
                const Text(
                  "Didn't receive the mail? Check your spam folder or",
                  style: TextStyle(fontSize: 12.0, height: 1.5),
                ),
                LongCustomButton(
                  title: "Resend Email",
                  backgroundColor: const Color(0xFF0F26A6),
                  foregroundColor: Colors.white,
                  onPressed: _resendEmail,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
