
import 'package:counselor_app/AppConfig.dart';
import 'package:counselor_app/CustomWidgetes.dart';
import 'package:counselor_app/screens/Password.dart';
import 'package:counselor_app/screens/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../variables.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    AppConfig().init(context);
    return Scaffold(
      backgroundColor: Variables.scaffoldBGColor,
      body:  Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConfig.screenWidth*0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: AppConfig.screenHeight * 0.15),
            Text("تسجيل الدخول",style: TextStyle(color: Variables.primaryColor,fontSize: 20,fontWeight: FontWeight.w600)),
            Text("قم بتسجيل الدخول أو إنشاء حساب جديد"),
            SizedBox(height: AppConfig.screenHeight * 0.01),
            CustomerTextPhoneField(),
            SizedBox(height: AppConfig.screenHeight * 0.01),
            CustomerPasswordField("كلمة المرور"),
            SizedBox(height: AppConfig.screenHeight * 0.01),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConfig.screenHeight * 0.1),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Password())
                  );

                },
                  child: Text("استعادة كلمة المرور")),
            ),
            SizedBox(height: AppConfig.screenHeight * 0.05),
            CustomerButton("تسجيل الدخول",(){}),
            SizedBox(height: AppConfig.screenHeight * 0.05),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConfig.screenHeight * 0.05),
              child: Row(
                children: <Widget>[
                  Text("إذا لم يكن لديك حساب تفضل "),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUp())
                      );

                    },
                      child: Text("بالتسجيل",style: TextStyle(color: Colors.blue),)),
                ],
              ),
            )


          ],
        ),
      )
    );
  }
}
