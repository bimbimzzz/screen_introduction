//copas in page 2
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          LottieBuilder.asset('assets/lottie3.json'),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Hopefully your day is amazing',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
