import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/features/onboarddingFirstSet/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../sign_up/screens/get_started.dart';
import 'onboarding1.dart';
import 'onboarding2.dart';
import 'onboarding3.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {

  //controller ro keep track of which page we are on
  PageController _controller = PageController();

//keep track o the current page index
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  onboarding1(),
                  onboarding2(),
                  onboarding3(),
                ],
              ),

                //skip button

              Positioned(
                top: 44,
                  right: 32,
                  child: GestureDetector(
                    onTap: (){},
                    child: Text("Skip",
                      style: TextStyle(fontSize: 16, color: Color(0xFF0F26A6)),
                    ),
                  ),
              ),
              //dot indicators
              Container(
                  alignment: Alignment(0,0.7),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SmoothPageIndicator(
                          controller: _controller,
                          count: 3,
                        effect: WormEffect(
                          activeDotColor: Colors.blue,
                          dotColor: Colors.grey,
                          dotHeight: 4,
                          dotWidth: 24,
                          spacing: 8
                        ),
                      ),

                      SizedBox(height:MediaQuery.of(context).size.height * 0.02),

                      if (_currentPage == 0)
                        Column(
                          children: [
                            Text("Effortless Laundry",
                            style: TextStyle(color: Colors.black),
                            ),
                            Text("Schedule. Track and Relax with LaundryEase!"),
                            SizedBox(height:MediaQuery.of(context).size.height * 0.04),
                            CustomButton(
                              title: "Next",
                              padding: EdgeInsets.symmetric(horizontal:32, vertical: 8),
                              backgroundColor: Color(0xFF0F26A6),
                              foregroundColor: Colors.white,
                              onPressed: (){},
                            )
                          ],
                        ),

                      if (_currentPage == 1)
                        Column(
                          children: [
                            Text("Convenient & Quality Care",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text("Professional clean laundry at your doorstep"),
                            SizedBox(height:MediaQuery.of(context).size.height * 0.04),
                            CustomButton(
                              title: "Next",
                              padding: EdgeInsets.symmetric(horizontal:32, vertical: 8),
                              backgroundColor: Color(0xFF0F26A6),
                              foregroundColor: Colors.white,
                              onPressed: (){},
                            )

                          ],
                        ),

                      if (_currentPage == 2)
                        Column(
                          children: [
                            Text("Reliable laundry Professionals",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text("Connect with reliable laundry professionals near you"),
                            SizedBox(height:MediaQuery.of(context).size.height * 0.04),
                            CustomButton(
                                title: "Next",
                                padding: EdgeInsets.symmetric(horizontal:32, vertical: 8),
                                backgroundColor: Color(0xFF0F26A6),
                                foregroundColor: Colors.white,
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => GetStarted()));
                                },
                            )
                          ],
                        ),

                    ],
                  ),
              ),

            ],

        )
    );
  }
}


