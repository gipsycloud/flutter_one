import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 100,
            ),
            FlutterLogo(
              size: 100,
            ),
            TextField(
              decoration: InputDecoration(hintText: "Enter Email"),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(hintText: "Enter Password"),
            ),
            SizedBox(
              height: 30,
            ),
            NeumorphicButton(
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              style: NeumorphicStyle(depth: 8, shadowDarkColor: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
