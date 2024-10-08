import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/sign_up/screens/email_verification.dart';
import 'package:laundry_ease_upgrade/sign_up/widgets/sign_up_widgets/terms_and_conditions_checkbox.dart';
import 'package:http/http.dart' as http;

import '../../../auth_services/signup_auth.dart';
import '../../../common/long_custom_button.dart';
import '../../../gen/assets.gen.dart';
import '../../../login/screens/login.dart';
import 'custom_text_fields_with_error.dart';

class SignUpDesktopTablet extends StatefulWidget {
  const SignUpDesktopTablet({super.key});

  @override
  State<SignUpDesktopTablet> createState() => _SignUpDesktopTabletState();
}

class _SignUpDesktopTabletState extends State<SignUpDesktopTablet> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailAddressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
  TextEditingController();

  bool _isValid = false;
  bool _isChecked = false;
  bool _nameValid = false;
  bool _emailAddressValid = false;
  bool _passwordValid = false;
  bool _confirmPasswordValid = false;

  void _updateValidation() {
    setState(() {
      _isValid = _isChecked &&
          _nameValid &&
          _emailAddressValid &&
          _passwordValid &&
          _confirmPasswordValid;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 46, vertical: 10),
          reverse: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 30,),
              Center(
                child:
                Container(
                  width: 120,
                  height: 120,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(120),
                  ),
                  child: Image.asset(
                    Assets.getStarted.path,
                    width:  120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              CustomTextFieldWithError(
                title: "Name",
                controller: _nameController,
                hintText: "Enter your name",
                keyboardType: TextInputType.text,
                onValidationChanged: (isValid) {
                  setState(() {
                    _nameValid = isValid;
                    _updateValidation();
                  });
                },
              ),
              CustomTextFieldWithError(
                title: "Email Address",
                hintText: "Enter your email",
                keyboardType: TextInputType.emailAddress,
                controller: _emailAddressController,
                onValidationChanged: (isValid) {
                  setState(() {
                    _emailAddressValid = isValid;
                    _updateValidation();
                  });
                },
              ),
              CustomTextFieldWithError(
                title: "Create Password",
                hintText: "********",
                keyboardType: TextInputType.visiblePassword,
                controller: _passwordController,
                onValidationChanged: (isValid) {
                  setState(() {
                    _passwordValid = isValid;
                    _updateValidation();
                  });
                },
              ),
              CustomTextFieldWithError(
                title: "Confirm Password",
                hintText: "********",
                keyboardType: TextInputType.visiblePassword,
                controller: _confirmPasswordController,
                confirmController: _passwordController,
                onValidationChanged: (isValid) {
                  setState(() {
                    _confirmPasswordValid = isValid;
                    _updateValidation();
                  });
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              TermsAndConditionsCheckbox(
                title: 'Agree with ',
                subTitle: 'Terms & Conditions?',
                shape: const CircleBorder(),
                onChanged: (isChecked) {
                  setState(() {
                    _isChecked = isChecked;
                    _updateValidation();
                  });
                },
              ),
              const SizedBox(height: 30),
              LongCustomButton(
                title: "Sign Up",
                backgroundColor: const Color(0xFF0F26A6),
                foregroundColor: Colors.white,
                onPressed: _onSignUp,
              ),
              const SizedBox(height: 20),
              const Center(child: Text("OR", style: TextStyle(), textAlign: TextAlign.center,)),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: (){},
                      child: Image.asset(Assets.google.path, width: 30, height: 30,)),
                  const SizedBox(width: 18,),
                  GestureDetector(
                      onTap: (){},
                      child: Image.asset(Assets.facebook.path, height: 30, width: 30,)),
                ],
              ),
              const SizedBox(height: 80),
              Center(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style:
                        const TextStyle(color: Colors.black, fontSize: 16),
                        children: [
                          const TextSpan(text: "Already have an account? "),
                          TextSpan(
                            text: "Login",
                            style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()));
                            },
                          ),
                        ])),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onSignUp() {
    if (_isValid) {
      if (_passwordController.text == _confirmPasswordController.text) {
        signUp(
          _nameController.text,
          _emailAddressController.text,
          _passwordController.text,
          _confirmPasswordController.text,
          context,
              () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const EmailVerification(), // Adjust if needed
              ),
            );
          },

        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Passwords do not match.')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text(
                'All fields must be filled and terms and conditions checked.')),
      );
    }
  }
}
