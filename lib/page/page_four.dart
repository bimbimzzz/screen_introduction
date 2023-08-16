//copas in page 2
import 'package:flutter/material.dart';

class PageFour extends StatefulWidget {
  const PageFour({super.key});

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: const Alignment(0, 0),
      child: const Text(
        'GOOD JOB\nnow you into Dasboard',
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    ));
  }
}
