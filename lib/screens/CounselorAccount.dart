import 'package:counselor_app/screens/CounselorSignup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../AppConfig.dart';
import '../CustomWidgetes.dart';
import '../variables.dart';

class CounselorAccount extends StatefulWidget {
  @override
  _CounselorAccountState createState() => _CounselorAccountState();
}

class _CounselorAccountState extends State<CounselorAccount> {
  @override
  Widget build(BuildContext context) {
    AppConfig().init(context);
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(AppConfig.screenWidth * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: AppConfig.screenHeight * 0.1),
            Text("تسجيل حساب مستشار",style: TextStyle(color: Variables.primaryColor,fontSize: 20,fontWeight: FontWeight.w600)),
            Text("قم بإختيار التخصص"),
            SizedBox(height: AppConfig.screenHeight * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CounselorAccountType ("مستشار قانوني",Icons.person),
                CounselorAccountType ("مستشار تجاري",Icons.attach_money),
              ],
            ),
            SizedBox(height: AppConfig.screenHeight * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CounselorAccountType ("مستشار طبي",Icons.person),
                CounselorAccountType ("مستشار نفسي",Icons.person),
              ],
            ),
            SizedBox(height: AppConfig.screenHeight * 0.03),
            Padding(
              padding: EdgeInsets.only(right: AppConfig.screenWidth*0.1),
              child: CounselorAccountType ("مستشار إجتماعي",Icons.person),
            ),
            SizedBox(height: AppConfig.screenHeight * 0.06),
            CustomerButton("تسجيل", (){
               Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CounselorSignUp())
                );
            })



          ],
        ),
      ),
    );
  }
}
