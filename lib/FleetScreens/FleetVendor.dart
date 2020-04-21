import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grandtransportservice/FleetScreens/Booking.dart';
import 'package:grandtransportservice/Utils.dart';
import 'package:image_picker/image_picker.dart';

class FleetVendor extends StatefulWidget {
  @override
  _FleetVendorState createState() => _FleetVendorState();
}

class _FleetVendorState extends State<FleetVendor> {
  TextEditingController brandCtrl = TextEditingController();
  TextEditingController modelCtrl = TextEditingController();
  TextEditingController yearCtrl = TextEditingController();
  TextEditingController colorCtrl = TextEditingController();
  TextEditingController plateCtrl = TextEditingController();
  TextEditingController categoryCtrl = TextEditingController();
  TextEditingController transmissionCtrl = TextEditingController();
  TextEditingController seatsCtrl = TextEditingController();
  TextEditingController doorsCtrl = TextEditingController();
  TextEditingController fuelCtrl = TextEditingController();
  TextEditingController mileageCtrl = TextEditingController();
  TextEditingController dayRateCtrl = TextEditingController();


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
      appBar: AppBar(
        backgroundColor: Colors.white,
         title: Text("Vendor",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: 226,
              width: getScreenSize(context).width,
              color: Colors.grey[400],
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Icon(Icons.image,size: 65,),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 340),
                      child: GestureDetector(
                        onTap: (){ showAlertDialog();},
                        child: Icon(Icons.edit,size: 30,),
                      ),
                    )

                    
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 24),
                  child: Text("Details",style: TextStyle(fontSize: 18),),
                ),
                Container(
                  child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding:EdgeInsetsDirectional.only(start: 24),
                            width: getScreenSize(context).width - 20,
                            child: TextFormField(
                              controller: brandCtrl,
                              maxLines: 1,
                              autovalidate: true,
                              showCursor: true,
                              decoration: InputDecoration(
                                hintText: "Enter Brand Name",
                                labelText: "Brand Name",
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
                              controller: modelCtrl,
                              maxLines: 1,
                              autovalidate: true,
                              showCursor: true,
                              decoration: InputDecoration(
                                hintText: "Enter Car Model",
                                labelText: "Model",
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
                              controller: yearCtrl,
                              maxLines: 1,
                              autovalidate: true,
                              showCursor: true,
                              decoration: InputDecoration(
                                hintText: "Enter Year",
                                labelText: "Year",
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
                              controller: colorCtrl,
                              maxLines: 1,
                              autovalidate: true,
                              showCursor: true,
                              decoration: InputDecoration(
                                hintText: "Enter Car Color",
                                labelText: "Color",
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
                              controller: plateCtrl,
                              maxLines: 1,
                              autovalidate: true,
                              showCursor: true,
                              decoration: InputDecoration(
                                hintText: "Enter Plate Number",
                                labelText: "Plate Number",
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
                              controller: categoryCtrl,
                              maxLines: 1,
                              autovalidate: true,
                              showCursor: true,
                              decoration: InputDecoration(
                                hintText: "Enter Category",
                                labelText: "Category",
                                labelStyle: TextStyle(
                                    color: Colors.grey
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),),
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                Divider(
                  height: 24,
                ),
                Container(
                    padding: EdgeInsetsDirectional.only(start: 16 ,top: 24),
                  child: Container(
                    child: Text("Description",style: TextStyle(fontSize: 18),),
                  )),
                Container(
                  child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding:EdgeInsetsDirectional.only(start: 24),
                            width: getScreenSize(context).width - 20,
                            child: TextFormField(
                              controller: transmissionCtrl,
                              maxLines: 1,
                              autovalidate: true,
                              showCursor: true,
                              decoration: InputDecoration(
                                hintText: "Transmission",
                                labelText: "Transmission",
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
                              controller: seatsCtrl,
                              maxLines: 1,
                              autovalidate: true,
                              showCursor: true,
                              decoration: InputDecoration(
                                hintText: "Enter Numeber of Seats",
                                labelText: "Numeber of Seats",
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
                              controller: doorsCtrl,
                              maxLines: 1,
                              autovalidate: true,
                              showCursor: true,
                              decoration: InputDecoration(
                                hintText: "Enter Numeber of Doors",
                                labelText: "Numeber of Doors",
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
                              controller: fuelCtrl,
                              maxLines: 1,
                              autovalidate: true,
                              showCursor: true,
                              decoration: InputDecoration(
                                hintText: "Enter Fuel Type",
                                labelText: "Fuel Type",
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
                              controller: mileageCtrl,
                              maxLines: 1,
                              autovalidate: true,
                              showCursor: true,
                              decoration: InputDecoration(
                                hintText: "Enter Mileage",
                                labelText: "Mileage",
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
                              controller: dayRateCtrl,
                              maxLines: 1,
                              autovalidate: true,
                              showCursor: true,
                              decoration: InputDecoration(
                                hintText: "Enter Per Day Rate",
                                labelText: "Per Day Rate",
                                labelStyle: TextStyle(
                                    color: Colors.grey
                                ),
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),),

                            ),
                          ),
                        ],
                      )
                  ),
                ),
                Container(
                  width: getScreenSize(context).width-20,
                  padding: EdgeInsetsDirectional.only(top: 50,start: 14),
                  child: GestureDetector(
                      onTap: (){navigate(context, Booking());},
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
