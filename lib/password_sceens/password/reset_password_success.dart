import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:laundry_ease_upgrade/common/long_custom_button.dart';

import '../../login/screens/login.dart';

class ResetPasswordSuccess extends StatefulWidget {
  const ResetPasswordSuccess({super.key});

  @override
  State<ResetPasswordSuccess> createState() => _ResetPasswordSuccessState();
}

class _ResetPasswordSuccessState extends State<ResetPasswordSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: false,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
             const SizedBox(height: 100,),
             Center(child: Image.asset("assets/psw_img.png")),
             const SizedBox(height: 40,),
             const Align(
              alignment: Alignment.center,
              child: Text("Password reset successfully",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
             ),
             const SizedBox(height: 21,width: 345,),
             const Text("Log in into your account with your new password.", textAlign: TextAlign.center,),
             const SizedBox(height: 50),
                LongCustomButton(
                  title: "Log in",
                  backgroundColor: const Color(0xFF0F26A6),
                  foregroundColor: Colors.white,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));
                  },
                ),

            ],
          ), ),
      ),

    );
  }
}