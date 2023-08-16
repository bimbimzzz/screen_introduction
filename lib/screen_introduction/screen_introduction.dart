import 'package:flutter/material.dart';
import 'package:screen_introduction/page/home_page.dart';
import 'package:screen_introduction/page/page_four.dart';
import 'package:screen_introduction/page/page_one.dart';
import 'package:screen_introduction/page/page_three.dart';
import 'package:screen_introduction/page/page_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScreenIntroduction extends StatefulWidget {
  const ScreenIntroduction({super.key});

  @override
  State<ScreenIntroduction> createState() => _ScreenIntroductionState();
}

class _ScreenIntroductionState extends State<ScreenIntroduction> {
  final PageController _controller = PageController();

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
                onLastPage = (index == 3);
              });
            },
            children: const [
              PageOne(),
              PageTwo(),
              PageThree(),
              PageFour(),
            ],
          ),
          Container(
              alignment: const Alignment(0, 0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) {
                        return const HomePage();
                      }));
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SmoothPageIndicator(controller: _controller, count: 4),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (context) {
                                return const HomePage();
                              }));
                            },
                            child: const Text(
                              'Done',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: const Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                ],
              ))
        ],
      ),
    );
  }

  //Thanks for watching, dont forget to subscribe to my channel :)
}
