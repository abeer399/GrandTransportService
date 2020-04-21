import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:grandtransportservice/widgets/ConfirmPassword.dart';
import 'package:grandtransportservice/widgets/LocationScreen.dart';
import 'package:grandtransportservice/widgets/NameScreen.dart';
import 'package:grandtransportservice/widgets/PasswordScreen.dart';

class SwiperLogin extends StatefulWidget {
  @override
  _SwiperLoginState createState() => _SwiperLoginState();
}

class _SwiperLoginState extends State<SwiperLogin> {
  List<Widget> LoginPages = [
    NameScreen(),
    LocationScreen(),
    PasswordScreen(),
    ConfirmPassword(),
  ];
  var lengths;

  @override
  void initState() {
    lengths = LoginPages.length;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: /*PageView(
      pageSnapping: true,
      children: <Widget>[
        NameScreen(),
        LocationScreen(),
        PasswordScreen(),
        ConfirmPassword(),
      ],
    )*/

      Swiper(
        itemBuilder:(context,lengths){
          return [];
        },
        itemCount: lengths,
        pagination: SwiperPagination(margin: EdgeInsetsDirectional.only(bottom:104 ),
        builder: DotSwiperPaginationBuilder(
          activeColor: Colors.yellow[800]
        )),
    ),
        );
  }
}
