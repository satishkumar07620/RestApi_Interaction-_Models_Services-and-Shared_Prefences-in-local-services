// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, camel_case_types, unnecessary_new, prefer_const_literals_to_create_immutables, use_build_context_synchronously, unused_local_variable, prefer_typing_uninitialized_variables, library_private_types_in_public_api, use_key_in_widget_constructors
//https://www.youtube.com/watch?v=56_PDVvPKOc
import 'dart:async';
import 'package:flutter/material.dart';
import 'loginpage.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 1),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => Login_Page_Screen())));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/logocopy3.png',
                  height: MediaQuery.of(context).size.height * 0.5),
              Text(
                'IHMS',
                style: TextStyle(
                    fontSize: 30.0, height: 3, fontWeight: FontWeight.bold),
              )
            ]),
      ),
    );
  }
}
