import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandtransportservice/Utils.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 230,
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  width: getScreenSize(context).width,
                  child:Image.asset("images/cars/rang.jpg",width: 343,height: 207,fit: BoxFit.cover,) ,
                ),
                Divider(
                  height: 26.5,
                ),
                Container(
                  padding:EdgeInsetsDirectional.only(start: 24),
                  width: getScreenSize(context).width - 20,
                  child: TextFormField(
                    maxLines: 1,
                    autovalidate: true,
                    showCursor: true,
                    decoration: InputDecoration(
                      hintText: "Car Name",
                      labelText: "Car",
                      labelStyle: TextStyle(
                          color: Colors.grey
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),),
                  ),
                ),
                Divider(
                  height: 26.5,
                ),
                Container(
                  padding:EdgeInsetsDirectional.only(start: 24),
                  width: getScreenSize(context).width - 20,
                  child: TextFormField(
                    maxLines: 1,
                    autovalidate: true,
                    showCursor: true,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        child: Icon(Icons.edit,color: Color(0xFFfbb315),),
                      ),
                      hintText: "Enter Per Day Rent",
                      labelText: "Rent",
                      labelStyle: TextStyle(
                          color: Colors.grey
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),),

                  ),
                ),
                Divider(
                  height: 26.5,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding:EdgeInsetsDirectional.only(start: 24),
                        width: getScreenSize(context).width -205 ,
                        child: TextFormField(
                          maxLines: 1,
                          autovalidate: true,
                          showCursor: true,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              child: Icon(Icons.calendar_today,color: Color(0xFFfbb315),),
                            ),
                            hintText: "Select Date",
                            labelText: "From",
                            labelStyle: TextStyle(
                                color: Colors.grey
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),),

                        ),
                      ),
                      Container(
                        padding:EdgeInsetsDirectional.only(start: 24),
                        width: getScreenSize(context).width -205 ,
                        child: TextFormField(
                          maxLines: 1,
                          autovalidate: true,
                          showCursor: true,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              child: Icon(Icons.calendar_today,color: Color(0xFFfbb315),),
                            ),
                            hintText: "Select Date",
                            labelText: "To",
                            labelStyle: TextStyle(
                                color: Colors.grey
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),),

                        ),
                      ),

                    ],
                  ),
                ),
                Divider(
                  height: 26.5,
                ),
                Container(
                  padding:EdgeInsetsDirectional.only(start: 24),
                  width: getScreenSize(context).width - 20,
                  child: TextFormField(
                    maxLines: 1,
                    autovalidate: true,
                    showCursor: true,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        child: Icon(Icons.edit,color: Color(0xFFfbb315),),
                      ),
                      hintText: "Enter the reason",
                      labelText: "Purpose",
                      labelStyle: TextStyle(
                          color: Colors.grey
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),),

                  ),
                ),
                Divider(
                  height: 50.5,
                ),
                Container(
                  height:8,
                  width: getScreenSize(context).width,
                  color: Colors.grey[300],
                ),

                Container(
                  margin: EdgeInsetsDirectional.only(top: 16,start: 16),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Text("Select Payment Method",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      ),
                      Container(
                        padding: EdgeInsetsDirectional.only(start: 150),
                        child: GestureDetector(
                          child: Icon(Icons.navigate_next,color: Color(0xFFFBB315),size: 25,),
                        ),
                      )
                    ],
                  ),
                ),


                Container(
                  width: getScreenSize(context).width-20,
                  padding: EdgeInsetsDirectional.only(top: 30,start: 14),
                  child: GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFFFBB315),
                        ),
                        child: Container(
                          padding: EdgeInsetsDirectional.only(top: 12),
                          child: Text("Next",textAlign: TextAlign.center,style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                          ),),
                        ),
                      )
                  ),
                )
              ],
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
