import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResetPasswordSuccess extends StatefulWidget {
  const ResetPasswordSuccess({super.key});

  @override
  State<ResetPasswordSuccess> createState() => _ResetPasswordSuccessState();
}

class _ResetPasswordSuccessState extends State<ResetPasswordSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
           SizedBox(height: 100,),
           Center(child: Image.asset("assets/psw_img.png")),
           SizedBox(height: 40,),
           Align(
            alignment: Alignment.center,
            child: Text("Password reset successfully",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
           ),
           SizedBox(height: 21,width: 345,),
           Text("Log in into your account with your new password.")

          ],
        ), ),

    );
  }
}