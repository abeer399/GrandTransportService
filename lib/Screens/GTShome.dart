import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandtransportservice/CategoriesScreen/Category.dart';
import 'package:grandtransportservice/Drivers/MyDrivers.dart';
import 'package:grandtransportservice/FleetScreens/MyFleet.dart';
import 'package:grandtransportservice/Revenue/RevenuePage.dart';
import 'package:grandtransportservice/ScheduleBookings/SchedulePage.dart';

import '../Utils.dart';

class GTShome extends StatefulWidget {
  @override
  _GTShomeState createState() => _GTShomeState();
}

class _GTShomeState extends State<GTShome> {

  @override
  Widget build(BuildContext context) {
    whiteStatusBar();
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Home",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 32,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: (){navigate(context, SchedulePage());},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 131,
                    width: getScreenSize(context).width-30,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 20,top: 20),
                            child: Container(
                              width: 100,
                              child: Text("Schedule Bookings",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                            ),
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 70,top: 20),
                            child: Image.asset("images/chart.png",width: 146,height: 97,),
                          )
                        ],
                      ),


                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){navigate(context, Category());},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 131,
                    width: getScreenSize(context).width-30,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 20,top: 20),
                            child: Container(
                              width: 100,
                              child: Text("Categories",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                            ),
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 70,top: 20),
                            child: Image.asset("images/bcar.png",width: 146,height: 97,),
                          )
                        ],
                      ),


                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){navigate(context, MyFleet());},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 131,
                    width: getScreenSize(context).width-30,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 20,top: 20),
                            child: Container(
                              width: 100,
                              child: Text("My Fleet",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                            ),
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 70,top: 20),
                            child: Image.asset("images/ycar.png",width: 146,height: 97,),
                          )
                        ],
                      ),


                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){navigate(context, MyDrivers());},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 131,
                    width: getScreenSize(context).width-30,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 20,top: 20),
                            child: Container(
                              width: 100,
                              child: Text("My Drivers",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                            ),
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 70,top: 20),
                            child: Image.asset("images/person.png",width: 146,height: 97,),
                          )
                        ],
                      ),


                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){navigate(context, RevenuePage());},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 131,
                    width: getScreenSize(context).width-30,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 20,top: 20),
                            child: Container(
                              width: 100,
                              child: Text("Revenue",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                            ),
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 70,top: 20),
                            child: Image.asset("images/chart2.png",width: 146,height: 97,),
                          )
                        ],
                      ),


                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
