import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandtransportservice/Drivers/NewDriver.dart';
import 'package:grandtransportservice/Utils.dart';
import 'package:grandtransportservice/widgets/DriverWidget.dart';

class MyDrivers extends StatefulWidget {
  @override
  _MyDriversState createState() => _MyDriversState();
}

class _MyDriversState extends State<MyDrivers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("My Drivers",style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          Padding(
            padding: EdgeInsetsDirectional.only(end: 20),
            child: GestureDetector(
              onTap: (){navigate(context, NewDriver());},
              child: Icon(Icons.add,size: 25,),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            DriverWidget(
              name: "Noah Lawson",
              address: "hdfjkvxcjkvhxcjv",
              area: "Gulshan",
            ),
            DriverWidget(
              name: "Noah Lawson",
              address: "hdfjkvxcjkvhxcjv",
              area: "Gulshan",
            ),
            DriverWidget(
              name: "Noah Lawson",
              address: "hdfjkvxcjkvhxcjv",
              area: "Gulshan",
            ),
            DriverWidget(
              name: "Noah Lawson",
              address: "hdfjkvxcjkvhxcjv",
              area: "Gulshan",
            ),
            DriverWidget(
              name: "Noah Lawson",
              address: "hdfjkvxcjkvhxcjv",
              area: "Gulshan",
            ),
            DriverWidget(
              name: "Noah Lawson",
              address: "hdfjkvxcjkvhxcjv",
              area: "Gulshan",
            ),
            DriverWidget(
              name: "Noah Lawson",
              address: "hdfjkvxcjkvhxcjv",
              area: "Gulshan",
            ),
            DriverWidget(
              name: "Noah Lawson",
              address: "hdfjkvxcjkvhxcjv",
              area: "Gulshan",
            ),
            DriverWidget(
              name: "Noah Lawson",
              address: "hdfjkvxcjkvhxcjv",
              area: "Gulshan",
            ),
            DriverWidget(
              name: "Noah Lawson",
              address: "hdfjkvxcjkvhxcjv",
              area: "Gulshan",
            ),DriverWidget(
              name: "Noah Lawson",
              address: "hdfjkvxcjkvhxcjv",
              area: "Gulshan",
            ),
            DriverWidget(
              name: "Noah Lawson",
              address: "hdfjkvxcjkvhxcjv",
              area: "Gulshan",
            ),
            DriverWidget(
              name: "Noah Lawson",
              address: "hdfjkvxcjkvhxcjv",
              area: "Gulshan",
            ),
            DriverWidget(
              name: "Noah Lawson",
              address: "hdfjkvxcjkvhxcjv",
              area: "Gulshan",
            ),
            DriverWidget(
              name: "Noah Lawson",
              address: "hdfjkvxcjkvhxcjv",
              area: "Gulshan",
            ),

            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
