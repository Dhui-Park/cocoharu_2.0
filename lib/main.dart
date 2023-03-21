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
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}
