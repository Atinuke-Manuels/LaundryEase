import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class onboarding1 extends StatefulWidget {
  const onboarding1({super.key});

  @override
  State<onboarding1> createState() => _onboarding1State();
}

class _onboarding1State extends State<onboarding1> {

  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
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
            //             onTap: () {},
            //              child: Text("Skip",
            //                   style: TextStyle(fontSize: 16, color: Colors.blue, ),
            //              ),
            //            ),
            //   ),
            // ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.17),
            Image.asset("assets/images/screen1.png"),

          ],

              ),
           ),
        )
    );
  }
}
