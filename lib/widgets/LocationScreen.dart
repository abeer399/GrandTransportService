import 'package:flutter/material.dart';
import 'package:grandtransportservice/widgets/ContactScreen.dart';

import '../Utils.dart';

class LocationScreen extends StatelessWidget {
  TextEditingController LocalCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsetsDirectional.only(top: 65, start: 19),
                  child: Text("Tell us about your self", style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF242628)),),
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(top: 30, start: 24),
                  child: Text("Where do you live?", style: TextStyle(
                      color: Colors.grey, fontSize: 20),),
                ),
                Container(
                  padding:EdgeInsetsDirectional.only(top: 40,start: 24),
                  width: getScreenSize(context).width - 50,
                  child: TextFormField(
                    controller: LocalCtrl,
                    maxLines: 1,
                    autovalidate: true,
                    showCursor: true,
                    decoration: InputDecoration(
                      hintText: "Select location",
                      suffixIcon: GestureDetector(
                        child: Icon(Icons.my_location,size: 25,color: Colors.yellow[800],),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),),

                  ),
                ),
                Container(
                  width: getScreenSize(context).width-20,
                  padding: EdgeInsetsDirectional.only(top: 430,start: 14),
                  child: GestureDetector(
                    onTap: (){navigate(context, ContactScreen());},
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    width: .9
                                ),
                                bottom: BorderSide(
                                    width: .9
                                ),
                                right: BorderSide(
                                    width: .9
                                ),
                                left: BorderSide(
                                    width: .9
                                )
                            )
                        ),
                        child: Container(
                          padding: EdgeInsetsDirectional.only(top: 12),
                          child: Text("Next",textAlign: TextAlign.center,style: TextStyle(
                              fontSize: 18
                          ),),
                        ),
                      )
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
