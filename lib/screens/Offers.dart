
import 'package:counselor_app/AppConfig.dart';
import 'package:counselor_app/CustomWidgetes.dart';
import 'package:flutter/material.dart';
import '../variables.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Variables.scaffoldBGColor,
      appBar: AppBar(
        title: Center(child: Text("العروض",style: TextStyle(color: Colors.black))),
      ),
      body: Padding(
        padding:  EdgeInsets.all(AppConfig.screenWidth*0.03),
        child: ListView(
          children: <Widget>[
            OfferItem("محمد عبد الرحمن" , "الرياض" , "500", 2.0),
            OfferItem("سالم الاحمد", "مكة المكرمة" , "1100", 5.0),
          ],
        ),
      )
    );
  }
}
