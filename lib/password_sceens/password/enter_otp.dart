import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EnterOtp extends StatefulWidget {
  const EnterOtp({super.key});

  @override
  State<EnterOtp> createState() => _EnterOtpState();
}

class _EnterOtpState extends State<EnterOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 100,),
            Center(child: Image.asset("assets/otp_img.png")),
            SizedBox(height: 40,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter OTP",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),)),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Enter the 4 digits verification code sent to \nyour email.")),
                SizedBox(height: 40),
              Row(
                
                children: [
                  SizedBox(
                    width: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.black12
                            
                           
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.black12
                            
                           
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.black12
                            
                          ),
                        ),
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.black12
                            
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.black12
                            
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.black12
                            
                          ),
                        ),
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 60,
                    child: TextFormField(

                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.black12

                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.black12
                            
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                           color: Colors.black12
                            
                            
                          ),
                        ),
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 60,
                    child: TextFormField(

                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.black12
                            
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.black12
                            
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.black12
                            
                          ),
                        ),
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Resend code in 00:25sec",
                style: TextStyle(
                  color: Colors.black26
                ),))
          ],),
      ),

    );
  }
}