import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:medcentral/pages/otp_auth1.dart';
import 'package:medcentral/pages/onboardingscreen.dart';
import 'package:medcentral/pages/splash_screen.dart';
import 'package:medcentral/utilities/button.dart';
import 'package:medcentral/utilities/onboarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int pageindex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<OnBoard> demo_data = [
    OnBoard("assets/images/onboardingimg1.png", "ECG in minutes",
        "An app which lets you monitor your \n heartbeats in minute and a little more text"),
    OnBoard("assets/images/onboardingimg2.png", "Fast and Simple",
        "An app which lets you monitor your \n heartbeats in minute and a little more text"),
    OnBoard("assets/images/onboardingimg3.png", "Get accurate results",
        "An app which lets you monitor your \n heartbeats in minute and a little more text"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: demo_data.length,
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  pageindex = index;
                });
              },
              itemBuilder: (context, index) => OnBoardingScreen(
                image: demo_data[index].image,
                title: demo_data[index].title,
                description: demo_data[index].description,
              ),
            ),

          ),

          SizedBox(
            height: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SmoothPageIndicator(
                controller: _pageController,
                count:  3,
                effect:  WormEffect(
                    spacing:  8.0,
                    radius:  10.0,
                    dotWidth:  12.0,
                    dotHeight:  12.0,
                    strokeWidth:  1.5,
                    dotColor:  Colors.grey.shade300,
                    activeDotColor:  HexColor("#37C9EE")
                ),
              ),
            ),
          ),
          SizedBox(
              height: 230,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  pageindex == 2?
                  InkWell(
                    splashColor: Colors.blue.shade50,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GetStarted()));
                    },
                    child: const BlueButton(text: "Get Started",),
                  ):

                  pageindex == 0
                      ? InkWell(
                          splashColor: Colors.blue.shade50,
                          onTap: () => _pageController.animateToPage(
                              2,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOutCubicEmphasized),
                          child: const SkipButton(),
                        )
                      : InkWell(
                          splashColor: Colors.blue.shade50,
                          onTap: () => _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease),
                          child: const backButton(),
                        ),
                  if(pageindex < 2)
                  const SizedBox(
                    width: 40,
                  ),
                  if(pageindex < 2)
                  InkWell(
                      splashColor: Colors.blue.shade50,
                      onTap: () => _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease),
                      child: const NextButton()),
                ],
              )),
        ],
      ),
    );
  }
}
