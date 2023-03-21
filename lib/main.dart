import 'package:cocoharu_second/constants/gaps.dart';
import 'package:cocoharu_second/constants/sizes.dart';
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
        primaryColor: const Color(0xFFE9435A),
      ),
      home: Padding(
        padding: const EdgeInsets.all(Sizes.size1),
        child: Container(
          child: Row(children: const [
            Text("hello"),
            Gaps.h20,
            Text("hello2"),
          ]),
        ),
      ),
    );
  }
}
