// ignore_for_file: use_build_context_synchronously, prefer_const_constructors, camel_case_types, file_names
import 'package:feb10uiandapi/sessionmethod/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:prefs/prefs.dart';

class Home_Page_Screen extends StatefulWidget {
  const Home_Page_Screen({super.key});

  @override
  State<Home_Page_Screen> createState() => _Home_Page_ScreenState();
}

class _Home_Page_ScreenState extends State<Home_Page_Screen> {
  var obtainedEmail = "";
  var password = "";
  @override
  void initState() {
    super.initState();
    getdata();
  }

  getdata() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    setState(() {
      obtainedEmail = sharedPreferences.getString('email')!;
      password = sharedPreferences.getString('pass')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'email : $obtainedEmail',
            style: TextStyle(fontSize: 26),
          ),
          Text(
            'password : $password',
            style: TextStyle(fontSize: 26),
          ),
          MaterialButton(
              color: Colors.lightBlueAccent,
              child: Text("Remove Credentials"),
              onPressed: () async {
                final SharedPreferences sharedPreferences =
                    await SharedPreferences.getInstance();
                sharedPreferences.remove('email');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Login_Page_Screen()));
              }),
        ],
      )),
    );
  }
}
