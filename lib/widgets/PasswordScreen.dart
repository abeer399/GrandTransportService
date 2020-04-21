import 'package:flutter/material.dart';
import 'package:grandtransportservice/widgets/ConfirmPassword.dart';

import '../Utils.dart';

class PasswordScreen extends StatelessWidget {
TextEditingController PassCtrl = TextEditingController();
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
                  child: Text("Lets secure your account", style: TextStyle(
                      color: Colors.grey, fontSize: 20),),
                ),
                Container(
                  padding:EdgeInsetsDirectional.only(top: 40,start: 24),
                  width: getScreenSize(context).width - 50,
                  child: TextFormField(
                    controller: PassCtrl,
                    maxLines: 1,
                    autovalidate: true,
                    showCursor: true,
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      suffixIcon: GestureDetector(
                        child: IconButton(
                          icon: Icon(Icons.remove_red_eye,size: 25,color: Colors.yellow[800],),
                          onPressed: (){
                            return Icon(Icons.remove_red_eye,color: Colors.grey,size: 25,);
                          },
                        )),
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),),

                  ),
                ),
                Container(
                  width: getScreenSize(context).width-20,
                  padding: EdgeInsetsDirectional.only(top: 430,start: 14),
                  child: GestureDetector(
                    onTap: (){navigate(context, ConfirmPassword());},
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