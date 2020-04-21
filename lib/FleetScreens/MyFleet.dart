import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandtransportservice/FleetScreens/FleetVendor.dart';
import 'package:grandtransportservice/Utils.dart';
import 'package:grandtransportservice/widgets/FleetFeature.dart';
import 'package:grandtransportservice/widgets/FleetWidget.dart';

class MyFleet extends StatefulWidget {
  @override
  _MyFleetState createState() => _MyFleetState();
}

class _MyFleetState extends State<MyFleet> {
  @override
  Widget build(BuildContext context) {
    whiteStatusBar();
    return Scaffold(
      appBar: AppBar(
        title: Text("My Fleet",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: EdgeInsetsDirectional.only(end: 15),
            child: GestureDetector(
              onTap: (){navigate(context, FleetVendor());},
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            FleetFeature(
              img: "car4.png",
              carName: "Mercede Benz SL",
              model:"2019,SUV",
              rates: "10.000",
              feaimg: "fev.png",
            ),
            FleetWidget(
              img: "car1.png",
              carName: "Mercede Benz SL",
              model:"2019,SUV",
              rates: "10.000",
            ),
            FleetFeature(
              img: "car2.png",
              carName: "Mercede Benz SL",
              model:"2019,SUV",
              rates: "10.000",
              feaimg: "fev.png",
            ),
            FleetWidget(
              img: "car4.png",
              carName: "Mercede Benz SL",
              model:"2019,SUV",
              rates: "10.000",
            ),
            FleetWidget(
              img: "car2.png",
              carName: "Mercede Benz SL",
              model:"2019,SUV",
              rates: "10.000",
            ),

            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
