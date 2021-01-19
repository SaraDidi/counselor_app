import 'package:counselor_app/AppConfig.dart';
import 'package:counselor_app/CustomWidgetes.dart';
import 'package:counselor_app/screens/CounselorAccount.dart';
import 'package:counselor_app/screens/UserAccount.dart';
import 'package:counselor_app/variables.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            Text("نوع الحساب",style: TextStyle(color: Variables.primaryColor,fontSize: 20,fontWeight: FontWeight.w600)),
            Text("يرجى أختيار نوع الحساب"),
            SizedBox(height: AppConfig.screenHeight * 0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CounselorAccount())
                      );

                    },
                    child: AccountType("مستشار",Icons.person)),
                InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserAccount())
                      );

                    },
                    child: AccountType("مستخدم",Icons.person))
              ],
            ),
            SizedBox(height: AppConfig.screenHeight * 0.08),
            CustomerButton("التالي",(){})
          ],
        ),
      )
    );
  }
}
