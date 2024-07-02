import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/common/long_custom_button.dart';
import 'package:laundry_ease_upgrade/password_sceens/password/enter_otp.dart';
import 'package:laundry_ease_upgrade/sign_up/widgets/sign_up_widgets/custom_text_fields_with_error.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 100), // Adjust this value to move the image down
            Center(
              child: Image.asset("assets/forgot_img.png"),
            ),
            SizedBox(height: 40,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Forget Password?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
                ),
              ),
              
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Don’t worry, it happens.\nEnter the email or mobile number linked \nto your account.")),
              CustomTextFieldWithError(
                title: "Email Address/Mobile number", 
                hintText: "Enter your email", 
                keyboardType: TextInputType.emailAddress),
                const SizedBox(height: 50),
                LongCustomButton(
                  title: "Submit",
                  backgroundColor: const Color(0xFF0F26A6),
                  foregroundColor: Colors.white,
                  onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context)=> EnterOtp()));
                  },
                ),

            


          ],
        ),
      
      ),
    );
  }
}
