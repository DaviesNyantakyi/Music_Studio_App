import 'package:flutter/material.dart';
import 'package:music_studio_app/screens/welcome_screen.dart';



const String kImageUrl = 'assets/austin-neill-hgO1wFPXl3I-unsplash.jpg';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const Scaffold(
        body: Scaffold(
          body: Center(
            child: WelcomeScreen(),
          ),
        ),
      ),
    );
  }
}
