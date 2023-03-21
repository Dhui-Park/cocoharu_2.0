import 'package:cocoharu_second/features/authentication/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:cocoharu_second/constants/sizes.dart';

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
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xFFF25F29),
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            elevation: 0,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: Sizes.size16 + Sizes.size2,
              fontWeight: FontWeight.w600,
            )),
      ),
      home: const SignUpScreen(),
    );
  }
}
