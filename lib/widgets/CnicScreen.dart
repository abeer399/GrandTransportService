import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../Utils.dart';

class CnicScreen extends StatefulWidget {
  @override
  _CnicScreenState createState() => _CnicScreenState();
}

class _CnicScreenState extends State<CnicScreen> {
  Future<File> fileimage;
  Widget pic(){
    return FutureBuilder<File>(
      future:  fileimage,
      builder: (BuildContext context,AsyncSnapshot<File> s ){
        if(s.connectionState==ConnectionState.done&&s.data!=null){
          return Image.file(
            s.data,
            height: 150,
            width: 150,
          );
        }
        else if (s.error !=null){
          return Text("Error !",style: TextStyle(color: Colors.red),);
        }
        else {
          return Text("Select the Image of your CNIC");
        }
      },
    );
  }
  pickImage(ImageSource src){
    setState(() {
      fileimage = ImagePicker.pickImage(source: src);
    });

  }

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
                  child: Text("Upload your NIC picture", style: TextStyle(
                      color: Colors.grey, fontSize: 20),),
                ),
                Container(
                  width: getScreenSize(context).width-20,
                  padding: EdgeInsetsDirectional.only(top: 200,start: 14),
                  child: GestureDetector(
                    onTap: (){
                      showAlertDialog();
                    },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Container(
                            padding: EdgeInsetsDirectional.only(top: 12),
                            child: Text("Upload",textAlign: TextAlign.center,style: TextStyle(
                                fontSize: 18
                            ),),
                          ),
                        ),
                      )
                  ),
                ),
                Container(
                  width: getScreenSize(context).width-20,
                  padding: EdgeInsetsDirectional.only(top: 280,start: 14),
                  child: GestureDetector(
                      onTap: (){navigate(context, CnicScreen());},
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

  showAlertDialog(){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("Upload Image"),
          content: Text("Select from where you want to pick your images",style: TextStyle(color: Colors.grey),),
          actions: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: RaisedButton(
                color: Colors.grey,
                onPressed: (){pickImage(ImageSource.gallery);},
                child: Text("Gallery"),

              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red,width: 1)),
                onPressed: (){pickImage(ImageSource.camera);},
                child: Text("Camera"),
              ),
            )
          ],
          elevation: 20,
          actionsOverflowButtonSpacing: 50,

        );
      }

    );

  }
}