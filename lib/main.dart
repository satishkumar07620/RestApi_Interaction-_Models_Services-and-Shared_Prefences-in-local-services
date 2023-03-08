// ignore_for_file: prefer_const_constructors

import 'package:feb10uiandapi/Per_Bottom_Nav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Pres_Bottom_Nav_Bar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
