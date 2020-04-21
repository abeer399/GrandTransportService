import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandtransportservice/widgets/FleetFeature.dart';
import 'package:grandtransportservice/widgets/FleetWidget.dart';

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Schedule Booking",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      padding: EdgeInsetsDirectional.only(start: 15.5),
                      height: 49,
                      width: 280,

                      child: Container(
                          decoration:BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 1,
                                      color: Colors.grey[400]
                                  ),
                                  bottom: BorderSide(
                                      width: 1,
                                      color: Colors.grey[400]
                                  ),
                                  left: BorderSide(
                                      width: 1,
                                      color: Colors.grey[400]
                                  ),
                                  right: BorderSide(
                                      width: 1,
                                      color: Colors.grey[400]
                                  )
                              )
                          ),
                          child: TextFormField(
                            maxLines: 1,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search my fleet",
                              hintStyle: TextStyle(color: Colors.grey[400]),
                              prefixIcon: Icon(Icons.search,color: Colors.grey[400],
                              ),
                            ),
                          )
                      )
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.only(start: 40),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  width: 1,
                                  color: Colors.grey[400]
                              ),
                              bottom: BorderSide(
                                  width: 1,
                                  color: Colors.grey[400]
                              ),
                              left: BorderSide(
                                  width: 1,
                                  color: Colors.grey[400]
                              ),
                              right: BorderSide(
                                  width: 1,
                                  color: Colors.grey[400]
                              )
                          )
                      ),
                      child: InkWell(
                        child: Icon(Icons.filter_list,size: 30,color: Color(0xFFfbb315),),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 32.5,
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
            FleetWidget(
              img: "car4.png",
              carName: "Mercede Benz SL",
              model:"2019,SUV",
              rates: "10.000",
            ),
            FleetWidget(
              img: "car4.png",
              carName: "Mercede Benz SL",
              model:"2019,SUV",
              rates: "10.000",
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
              height: 20,
            )


          ],
        ),
      ),
    );
  }
}
