import 'package:cocoharu_second/features/authentication/sign_up_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CocoHaruApp());
}

class CocoHaruApp extends StatelessWidget {
  const CocoHaruApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cocoharu',
      theme: ThemeData(
        primaryColor: const Color(0xFFF25F29),
      ),
      home: const SignUpScreen(),
    );
  }
}
