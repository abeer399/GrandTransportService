import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grandtransportservice/Screens/JoinNow.dart';
import 'package:grandtransportservice/Utils.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
      Timer(Duration(seconds: 5),()=>navigate(context, JoinNow()));
}
  @override
  Widget build(BuildContext context) {
    blackStatusBar();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset("images/logo4.png"),
      ),


    );
  }


}
