//copas in page 2
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          LottieBuilder.asset('assets/lottie2.json'),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Now You stil \n learn and watching my konten ',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
