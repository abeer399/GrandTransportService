
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils.dart';

class NewDriver extends StatefulWidget {
  @override
  _NewDriverState createState() => _NewDriverState();
}

class _NewDriverState extends State<NewDriver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("New Driver",style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          Padding(
            padding: EdgeInsetsDirectional.only(end: 15),
            child: GestureDetector(
              onTap: (){Navigator.of(context).pop();},
              child: Icon(Icons.close),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            Container(
              padding:EdgeInsetsDirectional.only(start: 24),
              width: getScreenSize(context).width - 20,
              child: TextFormField(
                maxLines: 1,
                autovalidate: true,
                showCursor: true,
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  labelText: "Driver Name",
                  labelStyle: TextStyle(
                      color: Colors.grey
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding:EdgeInsetsDirectional.only(start: 24),
              width: getScreenSize(context).width - 20,
              child: TextFormField(
                maxLines: 1,
                autovalidate: true,
                showCursor: true,
                decoration: InputDecoration(
                  hintText: "Enter Address",
                  labelText: "Address",
                  labelStyle: TextStyle(
                      color: Colors.grey
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding:EdgeInsetsDirectional.only(start: 24),
              width: getScreenSize(context).width - 20,
              child: TextFormField(
                maxLines: 1,
                autovalidate: true,
                showCursor: true,
                decoration: InputDecoration(
                  hintText: "Enter Contact Number",
                  labelText: "Contact Number",
                  labelStyle: TextStyle(
                      color: Colors.grey
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding:EdgeInsetsDirectional.only(start: 24),
              width: getScreenSize(context).width - 20,
              child: TextFormField(
                maxLines: 1,
                autovalidate: true,
                showCursor: true,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  hintText: "Enter Age",
                  labelText: "Age",
                  labelStyle: TextStyle(
                      color: Colors.grey
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding:EdgeInsetsDirectional.only(start: 24),
              width: getScreenSize(context).width - 20,
              child: TextFormField(
                maxLines: 1,
                autovalidate: true,
                showCursor: true,
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(
                  hintText: "Enter CNIC Number",
                  labelText: "CNIC Number",
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
    );
  }
}
