import 'package:flutter/material.dart';
import 'package:grandtransportservice/Screens/GTShome.dart';

import '../Utils.dart';


class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    whiteStatusBar();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: (){navigate(context, GTShome());},
          child: Icon(Icons.navigate_before,size: 30,color: Color(0xFFfbb315),),
        ),
        backgroundColor: Colors.white,
        title: Text("Categories",style: TextStyle(color: Colors.black),),
        centerTitle: true,
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
                onTap: (){},
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
                            padding: EdgeInsetsDirectional.only(start:25 ,top: 20),
                            child: Container(
                              width: 100,
                              child: Text("SUV",textAlign: TextAlign.start,style: TextStyle(fontSize: 20),),
                            ),
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 50,top: 20),
                            child: Image.asset("images/suv.png",width: 176,height:97,),
                          )
                        ],
                      ),


                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
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
                              child: Text("Luxury Car",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                            ),
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 70,top: 20),
                            child: Image.asset("images/luxury.png",width: 146,height: 97,),
                          )
                        ],
                      ),


                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: (){},
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
                            padding: EdgeInsetsDirectional.only(start: 27,top: 20),
                            child: Container(
                              width: 100,
                              child: Text("Saloon",textAlign: TextAlign.start,style: TextStyle(fontSize: 20),),
                            ),
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 70,top: 20),
                            child: Image.asset("images/saloon.png",width: 146,height: 97,),
                          )
                        ],
                      ),


                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: (){},
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
                              child: Text("Hatchback",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                            ),
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 70,top: 20),
                            child: Image.asset("images/hatchback.png",width: 146,height: 97,),
                          )
                        ],
                      ),


                    ),
                  ),
                ),
              ),

            ],
          ),
          SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
