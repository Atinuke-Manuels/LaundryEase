import 'package:flutter/material.dart';
import 'package:laundry_ease_upgrade/features/onboardingFirstSet/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../sign_up/screens/get_started.dart';
import 'onboarding1.dart';
import 'onboarding2.dart';
import 'onboarding3.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  // Controller to keep track of which page we are on
  PageController _controller = PageController();

  // Keep track of the current page index
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
            children: const [
              Onboarding1(),
              Onboarding2(),
              Onboarding3(),
            ],
          ),

          // Skip button
          Positioned(
            top: 44,
            right: 32,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "Skip",
                style: TextStyle(fontSize: 16, color: Color(0xFF0F26A6)),
              ),
            ),
          ),

          // Dot indicators and content
          Align(
            alignment: Alignment(0, 0.7),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const WormEffect(
                      activeDotColor: Colors.blue,
                      dotColor: Colors.grey,
                      dotHeight: 4,
                      dotWidth: 24,
                      spacing: 8,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                  if (_currentPage == 0)
                    Column(
                      children: [
                        const Text(
                          "Effortless Laundry",
                          style: TextStyle(color: Colors.black),
                        ),
                        const Text("Schedule. Track and Relax with LaundryEase!"),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                        CustomButton(
                          title: "Next",
                          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                          backgroundColor: Color(0xFF0F26A6),
                          foregroundColor: Colors.white,
                          onPressed: () {},
                        )
                      ],
                    ),

                  if (_currentPage == 1)
                    Column(
                      children: [
                        const Text(
                          "Convenient & Quality Care",
                          style: TextStyle(color: Colors.black),
                        ),
                        const Text("Professional clean laundry at your doorstep"),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                        CustomButton(
                          title: "Next",
                          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                          backgroundColor: Color(0xFF0F26A6),
                          foregroundColor: Colors.white,
                          onPressed: () {},
                        )
                      ],
                    ),

                  if (_currentPage == 2)
                    Column(
                      children: [
                        const Text(
                          "Reliable Laundry Professionals",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text("Connect with reliable laundry professionals"),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                        CustomButton(
                          title: "Next",
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                          backgroundColor: Color(0xFF0F26A6),
                          foregroundColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => GetStarted()),
                            );
                          },
                        )
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
