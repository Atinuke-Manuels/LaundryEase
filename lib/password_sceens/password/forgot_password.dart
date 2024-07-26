import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/common/long_custom_button.dart';
import 'package:laundry_ease_upgrade/password_sceens/password/enter_otp.dart';
import 'package:laundry_ease_upgrade/sign_up/widgets/sign_up_widgets/custom_text_fields_with_error.dart';
import '../../auth_services/forgot_password_auth.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();

  void _submit() {
    final emailOrMobile = _emailController.text.trim();

    if (emailOrMobile.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter your email or mobile number.')),
      );
      return;
    }

    requestPasswordReset(
      emailOrMobile,
          () {
        // On success, navigate to the OTP screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EnterOtp()),
        );
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("OTP has been sent to your email")),
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
      body: SingleChildScrollView(
        reverse: false,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 100), // Adjust this value to move the image down
              Center(
                child: Image.asset("assets/forgot_img.png"),
              ),
              const SizedBox(height: 40),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Don’t worry, it happens.\nEnter the email or mobile number linked \nto your account.",
                ),
              ),
              CustomTextFieldWithError(
                title: "Email Address/Mobile number",
                hintText: "Enter your email",
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                onValidationChanged: (isValid) {
                  // Handle validation if needed
                },
              ),
              const SizedBox(height: 50),
              LongCustomButton(
                title: "Submit",
                backgroundColor: const Color(0xFF0F26A6),
                foregroundColor: Colors.white,
                onPressed: _submit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
