import 'package:counselor_app/AppConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../CustomWidgetes.dart';
import '../variables.dart';
import 'RestorePassword2.dart';

class RestorePassword extends StatefulWidget {
  @override
  _RestorePasswordState createState() => _RestorePasswordState();
}

class _RestorePasswordState extends State<RestorePassword> {
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
              Text("يرجى إدخال رمز التحقيق المرسل إلى جوالك"),
              SizedBox(height: AppConfig.screenHeight * 0.05),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppConfig.screenWidth*0.2),
                child: Container(
                  height: AppConfig.screenHeight * 0.06,
                  width: AppConfig.screenWidth * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppConfig.screenWidth*0.05),
                    child: TextFormField(
                        obscureText: true,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        )),
                  ),

                ),
              ),
              SizedBox(height: AppConfig.screenHeight * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppConfig.screenWidth*0.2),
                child: InkWell(
                    onTap: (){},
                    child: Text("إعادة إرسال رمز التحقيق")),
              ),
              SizedBox(height: AppConfig.screenHeight * 0.05),
              CustomerButton("تأكيد",(){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RestorePassword2())
                );
              }),
          ],
        ),
      )
    );
  }
}
