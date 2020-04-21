import 'package:flutter/material.dart';

import '../Utils.dart';

class DriverWidget extends StatelessWidget {
  final String name;
  final String address;
  final String area;

  const DriverWidget({this.name, this.address, this.area});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              width: getScreenSize(context).width-16,
              padding: EdgeInsetsDirectional.only(start: 3),
              child: GestureDetector(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text("$name ",style: TextStyle(fontSize: 14,letterSpacing: .0),),
                          ),
                          SizedBox(height: 7,),
                          Container(
                            child: Text("$address",style: TextStyle(fontWeight: FontWeight.w300,letterSpacing: .0),),
                          ),
                          SizedBox(height: 7,),
                          Container(
                            child: Text("$area",style: TextStyle(fontWeight: FontWeight.w300,letterSpacing: .0),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(start: 230),
                      child: GestureDetector(
                        child: Icon(Icons.navigate_next,size: 25,color: Color(0xFFfbb315),),
                      ),
                    )
                  ],
                ),
              )
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: getScreenSize(context).width-30,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 0.5
                    )
                )
            ),
          ),
          SizedBox(
            height: 16,
          )


        ],
      ),
    );
  }
}
