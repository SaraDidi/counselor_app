import 'package:counselor_app/screens/RestorePassword.dart';
import 'package:flutter/material.dart';

import '../AppConfig.dart';
import '../CustomWidgetes.dart';
import '../variables.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {

  @override
  Widget build(BuildContext context) {
    AppConfig().init(context);
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(AppConfig.screenWidth * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           SizedBox(height: AppConfig.screenHeight * 0.15),
           Text("استعادة كلمة المرور",style: TextStyle(color: Variables.primaryColor,fontSize: 20,fontWeight: FontWeight.w600)),
           Text("الرجاء ادخال رقم الجوال لإستعادة كلمة المرور"),
           SizedBox(height: AppConfig.screenHeight * 0.05),
           CustomerTextPhoneField(),
           SizedBox(height: AppConfig.screenHeight * 0.05),
           CustomerButton("ارسال",(){
             Navigator.push(
                 context,
                 MaterialPageRoute(
                     builder: (context) => RestorePassword())
             );
           }),
     ],
        ),
      )
    );
  }
}
