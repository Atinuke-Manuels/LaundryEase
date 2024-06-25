import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class EmailVerificationDesktopTablet extends StatelessWidget {
  const EmailVerificationDesktopTablet({super.key});

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
                Image.asset(Assets.email.path, width: 500, height: 400,),
                const Text(
                  "Verify your email",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10,),
                const Text(
                  "We have sent a mail requesting you to verify your email",
                  style: TextStyle(fontSize: 14.0, height: 1.5),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.09,),
                const Text("Didn't receive the mail? check your spasm folder or",),
                ElevatedButton(onPressed: (){}, child: const Text("Resend Email")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
