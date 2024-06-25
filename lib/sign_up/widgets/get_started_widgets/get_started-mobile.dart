import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/sign_up/screens/vendor_sign_up.dart';

import '../../../gen/assets.gen.dart';
import '../../../login/screens/login.dart';
import '../../screens/sign_up.dart';

class GetStartedMobile extends StatelessWidget {
  const GetStartedMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          reverse: false,
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  "Let's Get Started",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 280,
                  height: 280,
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(280),
                  ),
                  child: Image.asset(
                    Assets.getStarted.path,
                    width: 202,
                    height: 202,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.08,
                ),
                const Text(
                  "Sign up as",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.02,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                    child: const Text("Client")),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VendorSignUp()));
                    },
                    child: const Text("Laundry Professional")),
                const SizedBox(
                  height: 40,
                ),
                RichText(
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
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
