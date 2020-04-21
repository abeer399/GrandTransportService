import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandtransportservice/Screens/SwiperLogin.dart';
import 'package:grandtransportservice/Utils.dart';

class JoinNow extends StatefulWidget {
  @override
  _JoinNowState createState() => _JoinNowState();
}

class _JoinNowState extends State<JoinNow> {
  @override
  Widget build(BuildContext context) {
    blackStatusBar();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: getScreenSize(context).width,
            height: getScreenSize(context).height,
            child: Image.asset(
              "images/login.png",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsetsDirectional.only(top: 64),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          "images/logo4.png",
                          width: 150,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      navigate(context, SwiperLogin());
                    },
                    child: Container(
                        padding: EdgeInsetsDirectional.only(top: 630, start: 8),
                        child: Center(
                          child: Container(
                            height: 50,
                            width: getScreenSize(context).width - 50,
                            color: Color(0xFFfbb315),
                            child: Container(
                              padding: EdgeInsetsDirectional.only(top: 12),
                              child: Text(
                                "Join Now",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: "Roboto"),
                              ),
                            ),
                          ),
                        )),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsetsDirectional.only(top: 24),
                      child: Text(
                        "Already have an account",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
