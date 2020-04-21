import 'package:flutter/material.dart';

import 'Screens/Splash.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grand Transport Service",
      debugShowCheckedModeBanner: false,
      home: Splash(),
      theme: ThemeData(
        primaryIconTheme: IconThemeData(color: Color(0xFFfbb315))
      ),
    );
  }
}
