import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          LottieBuilder.asset('assets/lottie1.json'),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: const Text(
              'Welcome to My \nYoutube Channel \n\n BimbimzzzProject',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
