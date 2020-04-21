
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


Size getScreenSize(BuildContext context) => MediaQuery.of(context).size;


navigate(BuildContext context,Widget route){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => route),
  );
}

navigateDrawer(BuildContext context,Widget route){
  Navigator.of(context).pop();
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => route),
  );
}

blackStatusBar(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black));
}
whiteStatusBar() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white));
}


