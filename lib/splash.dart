import 'package:flutter/material.dart';
import 'package:uts/login.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  _Splash createState() => _Splash();
}

class _Splash extends State<Splash> {
  void initState() {
    super.initState();
    splashStart();
  }

  splashStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.travel,
              size: 100.0,
              color: Colors.yellowAccent,
            ),
            SizedBox(
              height: 24.0,
            ),
            Text(
              "This is Travel !",
              style: TextStyle(
                color: Colors.yellowAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text(
              "Copyright © 2020 yulianto",
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
