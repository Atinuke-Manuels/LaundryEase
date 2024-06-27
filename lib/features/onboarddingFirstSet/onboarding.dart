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
  bool onLastPage = false;

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
                    onLastPage = (index ==2);
                  });
                },
                children: [
                  onboarding1(),
                  onboarding2(),
                  onboarding3(),
                ],
              ),

                //skip button

              if(!onLastPage)
              Positioned(
                top: 44,
                  right: 32,
                  child: GestureDetector(
                    onTap: (){
                      _controller.jumpToPage(2);
                    },
                    child: Text("Skip",
                      style: TextStyle(fontSize: 16, color: Color(0xFF0F26A6)),
                    ),
                  ),
              ),
              Positioned(
                bottom: 80,
                  left: 150,
                  child: CustomButton(
                    title: onLastPage ? "Done" : "Next",
                    padding: EdgeInsets.symmetric(horizontal:32, vertical: 8),
                    backgroundColor: Color(0xFF0F26A6),
                    foregroundColor: Colors.white,
                    onPressed: (){
                      if (onLastPage) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GetStarted())
                        );
                      } else {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      }

                    },
                  ),
              ),
              //dot indicators
              Container(
                  alignment: Alignment(0,0.6),
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

                      SizedBox(height:MediaQuery.of(context).size.height * 0.03),

                      if (_currentPage == 0)
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Effort',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: 'less',
                                    style: TextStyle(color: Color(0xFF0F26A6), fontWeight: FontWeight.bold),
                                  ),

                                  TextSpan(
                                    text: ' laundry',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                               ),
                              ),
                            SizedBox(height:MediaQuery.of(context).size.height * 0.01),
                           Text("Schedule, Track and Relax with LaundryEase!"),
                            SizedBox(height:MediaQuery.of(context).size.height * 0.04),
                            // CustomButton(
                            //   title: "Next",
                            //   padding: EdgeInsets.symmetric(horizontal:32, vertical: 8),
                            //   backgroundColor: Color(0xFF0F26A6),
                            //   foregroundColor: Colors.white,
                            //   onPressed: (){
                            //     _controller.nextPage(
                            //       duration: Duration(milliseconds: 500),
                            //       curve: Curves.easeIn,
                            //     );
                            //   },
                            // )
                          ],
                        ),

                      if (_currentPage == 1)
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Convenient & ',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: 'Quality ',
                                    style: TextStyle(color: Color(0xFF0F26A6), fontWeight: FontWeight.bold),
                                  ),

                                  TextSpan(
                                    text: 'Care',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height:MediaQuery.of(context).size.height * 0.01),
                            Text("Professional clean laundry at your doorstep"),
                            SizedBox(height:MediaQuery.of(context).size.height * 0.04),
                            // CustomButton(
                            //   title: "Next",
                            //   padding: EdgeInsets.symmetric(horizontal:32, vertical: 8),
                            //   backgroundColor: Color(0xFF0F26A6),
                            //   foregroundColor: Colors.white,
                            //   onPressed: (){
                            //     _controller.nextPage(
                            //       duration: Duration(milliseconds: 500),
                            //       curve: Curves.easeIn,
                            //     );
                            //   },
                            // )

                          ],
                        ),

                      if (_currentPage == 2)
                        Column(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Reliable ',
                                    style: TextStyle(color: Color(0xFF0F26A6), fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: 'laundry',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),

                                  TextSpan(
                                    text: ' Professionals',
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height:MediaQuery.of(context).size.height * 0.01),
                            Text("Connect with reliable laundry professionals near you"),
                            SizedBox(height:MediaQuery.of(context).size.height * 0.04),
                            // CustomButton(
                            //     title: "Next",
                            //     padding: EdgeInsets.symmetric(horizontal:32, vertical: 8),
                            //     backgroundColor: Color(0xFF0F26A6),
                            //     foregroundColor: Colors.white,
                            //     onPressed: (){
                            //       Navigator.push(
                            //           context,
                            //           MaterialPageRoute(builder: (context) => GetStarted()));
                            //     },
                            // )
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


