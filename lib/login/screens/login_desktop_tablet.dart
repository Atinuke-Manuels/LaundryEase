import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/common/long_custom_button.dart';
import 'package:laundry_ease_upgrade/features/homec/pages/home_page.dart';
import 'package:laundry_ease_upgrade/password_sceens/password/forgot_password.dart';
import 'package:laundry_ease_upgrade/profile/screens/profile_page.dart';
import 'package:http/http.dart' as http;

import '../../auth_services/login_auth.dart';
import '../../gen/assets.gen.dart';
import '../../sign_up/screens/sign_up.dart';
import '../../sign_up/widgets/sign_up_widgets/terms_and_conditions_checkbox.dart';
import '../widgets/login_text_fields.dart';

class LoginDesktopTablet extends StatefulWidget {
  const LoginDesktopTablet({super.key});

  @override
  State<LoginDesktopTablet> createState() => _LoginDesktopTabletState();
}

class _LoginDesktopTabletState extends State<LoginDesktopTablet> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          reverse: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Welcome Back",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
                textAlign: TextAlign.left,
              ),
              const Text(
                "Please Login to continue",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 30,),
              LoginTextFields(
                title: "Email Address",
                hintText: "Enter your email",
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                onValidationChanged: (text) {
                  setState(() {
                    _emailController.text = text as String;
                  });
                },
              ),
              LoginTextFields(
                title: "Password",
                hintText: "Enter your password",
                keyboardType: TextInputType.visiblePassword,
                controller: _passwordController,
                onValidationChanged: (text) {
                  setState(() {
                    _passwordController.text = text as String;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TermsAndConditionsCheckbox(title: 'Remember me',),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPassword()));
                  }, child:  Text("Forgot password?", style: TextStyle(color: Colors.blue.shade800),))
                ],
              ),
              const SizedBox(height: 40,),
              LongCustomButton(
                title: "Login",
                backgroundColor: const Color(0xFF0F26A6),
                foregroundColor: Colors.white,
                onPressed: () {
                  login(
                    context,
                    _emailController.text,
                    _passwordController.text,
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 20),
              const Center(child: Text("OR", style: TextStyle(fontSize: 16,), textAlign: TextAlign.center,)),
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
              const SizedBox(height: 20),
              Center(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style:
                        const TextStyle(color: Colors.black, fontSize: 16),
                        children: [
                          const TextSpan(text: "New here? "),
                          TextSpan(
                            text: "Sign Up",
                            style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
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

}
