// ignore_for_file: prefer_const_constructors, override_on_non_overriding_member, annotate_overrides, camel_case_types, non_constant_identifier_names, use_build_context_synchronously

import 'package:feb10uiandapi/sessionmethod/Home_Page_Screen.dart';
import 'package:flutter/material.dart';
import 'package:prefs/prefs.dart';

class Login_Page_Screen extends StatefulWidget {
  const Login_Page_Screen({super.key});

  @override
  State<Login_Page_Screen> createState() => _Login_Page_ScreenState();
}

class _Login_Page_ScreenState extends State<Login_Page_Screen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginPageScreen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter Your Name',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                ),
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('Sign In'),
              onPressed: () async {
                final SharedPreferences sharedPreferences =
                    await SharedPreferences.getInstance();
                sharedPreferences.setString('email', emailController.text);
                sharedPreferences.setString('pass', passwordController.text);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home_Page_Screen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
