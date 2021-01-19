import 'package:counselor_app/AppConfig.dart';
import 'package:counselor_app/CustomWidgetes.dart';
import 'package:counselor_app/variables.dart';
import 'package:flutter/material.dart';

class UserAccount extends StatefulWidget {
  @override
  _UserAccountState createState() => _UserAccountState();
}

class _UserAccountState extends State<UserAccount> {
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
            Text("تسجيل حساب مستخدم",style: TextStyle(color: Variables.primaryColor,fontSize: 20,fontWeight: FontWeight.w600)),
            Text("قم بتعبئة البيانات التالية"),
            SizedBox(height: AppConfig.screenHeight * 0.05),
            CustomerTextField("الإسم",TextInputType.phone),
            SizedBox(height: AppConfig.screenHeight * 0.01),
            CustomerTextPhoneField(),
            SizedBox(height: AppConfig.screenHeight * 0.01),
            DropDown("الجنس"),
            SizedBox(height: AppConfig.screenHeight * 0.01),
            DropDown("الدولة"),
            SizedBox(height: AppConfig.screenHeight * 0.05),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal:AppConfig.screenWidth*0.1),
              child: Row(children: <Widget>[
                Icon(Icons.check_box_outline_blank),
                SizedBox(width: AppConfig.screenWidth * 0.05),
                Text("أوفق على "),
                Text("الشروط و الأحكام ",style: TextStyle(color: Colors.green),),
              ],),
            ),
            SizedBox(height: AppConfig.screenHeight * 0.05),
            CustomerButton("تسجيل",(){})
          ],
        ),
      ),
    );
  }
}
