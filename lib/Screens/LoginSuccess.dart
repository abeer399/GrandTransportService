import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandtransportservice/Screens/GTShome.dart';
import '../Utils.dart';
class LoginSuccess extends StatefulWidget {
  @override
  _LoginSuccessState createState() => _LoginSuccessState();
}

class _LoginSuccessState extends State<LoginSuccess> {

  void initState() {
    super.initState();
    Timer(Duration(seconds: 10),()=>navigate(context, GTShome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Home",style: TextStyle(color: Colors.black),),
      ),
      drawer: Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsetsDirectional.only(top:80 ),
            child: GestureDetector(
              onTap: (){navigate(context, GTShome());},
              child: Container(
                height: 200,
                width: getScreenSize(context).width,
                child: Image.asset("images/success.png",),
              ),
            )
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: getScreenSize(context).width-180,
            child: Container(
              child: Text("You have successfully created the profile",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: getScreenSize(context).width-40,
            child: Container(
              child: Text("GTS Team is reviewing your profile, upon approval you will be a part of our community",textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 14
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
