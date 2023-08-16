import 'package:flutter/material.dart';
import 'package:screen_introduction/screen_introduction/screen_introduction.dart';

void main() {
  runApp(const MyApp());
}

//Welcome to my channel "Bimbimzzz Project"

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ScreenIntroduction(),
    );
  }
}

//Now we create Introduction Screen
//Let's start


