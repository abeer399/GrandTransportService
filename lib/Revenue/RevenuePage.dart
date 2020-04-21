import 'package:flutter/material.dart';
import 'package:grandtransportservice/widgets/RevenueWidget.dart';


class RevenuePage extends StatefulWidget {
  @override
  _RevenuePageState createState() => _RevenuePageState();
}

class _RevenuePageState extends State<RevenuePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Revenue",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            RevenueWidget(
              img: "car4.png",
              carName: "Mercede Benz SL",
              model:"2019,SUV",
              rates: "10.000",
            ),
            RevenueWidget(
              img: "car2.png",
              carName: "Mercede Benz SL",
              model:"2019,SUV",
              rates: "10.000",
            ),
            RevenueWidget(
              img: "car1.png",
              carName: "Mercede Benz SL",
              model:"2019,SUV",
              rates: "10.000",
            ),
            RevenueWidget(
              img: "car3.png",
              carName: "Mercede Benz SL",
              model:"2019,SUV",
              rates: "10.000",
            ),
            RevenueWidget(
              img: "car2.png",
              carName: "Mercede Benz SL",
              model:"2019,SUV",
              rates: "10.000",
            ),
            RevenueWidget(
              img: "car4.png",
              carName: "Mercede Benz SL",
              model:"2019,SUV",
              rates: "10.000",
            ),
            RevenueWidget(
              img: "car3.png",
              carName: "Mercede Benz SL",
              model:"2019,SUV",
              rates: "10.000",
            ),
          ],
        ),
      ),
    );
  }
}
