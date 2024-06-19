import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class SignUpDesktopTablet extends StatelessWidget {
  const SignUpDesktopTablet({super.key});

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
            ],
          ),
        ),
      ),
    );
  }
}
