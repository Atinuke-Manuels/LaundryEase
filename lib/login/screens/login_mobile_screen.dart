import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/features/homec/pages/home_page.dart';
import 'package:laundry_ease_upgrade/login/widgets/login_text_fields.dart';
import 'package:laundry_ease_upgrade/sign_up/screens/sign_up.dart';


import '../../auth_services/login_auth.dart';
import '../../common/long_custom_button.dart';
import '../../gen/assets.gen.dart';
import '../../password_sceens/password/forgot_password.dart';
import '../../sign_up/widgets/sign_up_widgets/terms_and_conditions_checkbox.dart';

class LoginMobileScreen extends StatefulWidget {
  const LoginMobileScreen({super.key});

  @override
  _LoginMobileScreenState createState() => _LoginMobileScreenState();
}

class _LoginMobileScreenState extends State<LoginMobileScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
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
                  fontSize: 22,
                ),
                textAlign: TextAlign.left,
              ),
              const Text(
                "Please Login to continue",
                style: TextStyle(
                  fontSize: 12,
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
              const SizedBox(height: 100,),
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
