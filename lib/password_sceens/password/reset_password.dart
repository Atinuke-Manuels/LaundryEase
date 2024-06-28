import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:laundry_ease_upgrade/common/long_custom_button.dart';
import 'package:laundry_ease_upgrade/password_sceens/password/reset_password_success.dart';
import 'package:laundry_ease_upgrade/sign_up/widgets/sign_up_widgets/custom_text_fields_with_error.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 100,),
              Center(child: Image.asset("assets/reset_img.png")),
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Reset Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),)),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Enter the 4 digits verification code sent to \nyour email.")),
                  
                  CustomTextFieldWithError(
                  title: "New Password", 
                  hintText: "******", 
                  keyboardType: TextInputType.visiblePassword),
                  
                  CustomTextFieldWithError(
                  title: "Comfirm Password", 
                  hintText: "*******", 
                  keyboardType: TextInputType.visiblePassword),
                  const SizedBox(height: 30),
                  LongCustomButton(
                  title: "Submit",
                  backgroundColor: const Color(0xFF0F26A6),
                  foregroundColor: Colors.white,
                  onPressed: (){
                     Navigator.push(
                        context, MaterialPageRoute(builder: (context)=> ResetPasswordSuccess()));
                  },
                ),
            ],),),
      ),
    );
  }
}