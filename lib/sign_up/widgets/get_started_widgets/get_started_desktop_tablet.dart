import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/sign_up/screens/sign_up.dart';
import 'package:laundry_ease_upgrade/sign_up/screens/vendor_sign_up.dart';

import '../../../common/long_custom_button.dart';
import '../../../gen/assets.gen.dart';
import '../../../login/screens/login.dart';

class GetStartedDesktopTablet extends StatelessWidget {
  const GetStartedDesktopTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: false,
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Let's Get Started",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 340,
                  height: 340,
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(340),
                  ),
                  child: Image.asset(
                    Assets.getStarted.path,
                    width:  232,
                    height: 232,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
                const Text(
                  "Sign up as",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.02,
                ),
                LongCustomButton(
                  title: "Client",
                  backgroundColor: const Color(0xFF0F26A6),
                  foregroundColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                LongCustomButton(
                  title: "Laundry Professional",
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xFF0F26A6),
                  borderRadius: BorderRadius.circular(8),
                  borderColor: const Color(0xFF0F26A6),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VendorSignUp()));
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                RichText(
                    text: TextSpan(
                        style: const TextStyle(color: Colors.black, fontSize: 26),
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
                const SizedBox(height: 8,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
