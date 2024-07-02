import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class onboarding2 extends StatelessWidget {
  const onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 16.0),
                    //   child: Align(
                    //     alignment: Alignment.topRight,
                    //     child: GestureDetector(
                    //       onTap: () {},
                    //       child: Text("Skip",
                    //         style: TextStyle(fontSize: 16, color: Colors.blue, ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Image.asset("assets/images/screen2.png"),
                  ],
                ),
              )
          ),
        )
    );
  }
}
