import 'package:flutter/material.dart';
import 'package:grandtransportservice/base/Styles.dart';

import '../Utils.dart';


class RevenueWidget extends StatelessWidget {
  final String img;
  final String carName;
  final String model;
  final String rates;
  final String area;
  RevenueWidget({this.img, this.carName, this.model, this.rates,this.area});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: getScreenSize(context).width-16,
            padding: EdgeInsetsDirectional.only(start: 3),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 0.5
                    )
                )
            ),
            child: GestureDetector(
              onTap: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Container(
                      child: Image.asset("images/cars/$img",height: 120,
                          width: 110),
                    ),
                  ),

                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text("$carName ",style: TextStyle(fontSize: 14,letterSpacing: .0),),
                        ),
                        SizedBox(height: 7,),
                        Container(
                          child: Text("$model",style: TextStyle(fontWeight: FontWeight.w300,letterSpacing: .0),),
                        ),
                        SizedBox(height: 7,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 8.9,
                                width: 8,
                                color: Color(0xFF1AC212),
                              ),
                            ),
                            SizedBox(width: 8,),
                            Container(
                              child: Text("Avalible",style: TextStyle(fontWeight: FontWeight.w300,letterSpacing: .0),),
                            ),


                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.only(start: 70,bottom: 23),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          child: Text("Rs $rates/-",style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 2,),

                      ],
                    ),
                  )
                ],
              ),
            )
          ),
          SizedBox(
            height: 10,
          )

        ],
      ),
    );
  }
}

