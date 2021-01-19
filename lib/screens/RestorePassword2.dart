import 'package:flutter/material.dart';

import '../AppConfig.dart';
import '../CustomWidgetes.dart';
import '../variables.dart';

class RestorePassword2 extends StatefulWidget {
  @override
  _RestorePassword2State createState() => _RestorePassword2State();
}

class _RestorePassword2State extends State<RestorePassword2> {
  @override
  Widget build(BuildContext context) {
    AppConfig().init(context);
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConfig.screenWidth*0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: AppConfig.screenHeight * 0.15),
              Text("استعادة كلمة المرور",style: TextStyle(color: Variables.primaryColor,fontSize: 20,fontWeight: FontWeight.w600)),
              Text("يرجى إدخال كلمة المرور الجديدة"),
              SizedBox(height: AppConfig.screenHeight * 0.05),
              CustomerPasswordField("كلمة المرور"),
              SizedBox(height: AppConfig.screenHeight * 0.02),
              CustomerPasswordField("تأكيد كلمة المرور"),
              SizedBox(height: AppConfig.screenHeight * 0.05),
              CustomerButton("إرسال",(){}),
            ],
          ),
        )
    );
  }
}
