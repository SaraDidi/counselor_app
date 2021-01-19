import 'package:flutter/material.dart';
import '../AppConfig.dart';
import '../CustomWidgetes.dart';
import '../variables.dart';



class CounselorSignUp extends StatefulWidget {

  @override
  _CounselorSignUpState createState() => _CounselorSignUpState();
}

class _CounselorSignUpState extends State<CounselorSignUp> {
  var _currencies = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];

  @override
  Widget build(BuildContext context) {
    AppConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Padding(
          padding:  EdgeInsets.all(AppConfig.screenWidth * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: AppConfig.screenHeight * 0.1),
              Text("تسجيل حساب مستشار",style: TextStyle(color: Variables.primaryColor,fontSize: 20,fontWeight: FontWeight.w600)),
              Text("قم بتعبئة البيانات التالية"),
              SizedBox(height: AppConfig.screenHeight * 0.05),
              CustomerTextField("الإسم",TextInputType.text),
              SizedBox(height: AppConfig.screenHeight * 0.02),
              CustomerTextPhoneField(),
              SizedBox(height: AppConfig.screenHeight * 0.02),
              DropDown("الجنس"),
              SizedBox(height: AppConfig.screenHeight * 0.02),
              DropDown("الدولة"),
              SizedBox(height: AppConfig.screenHeight * 0.02),
              DropDown("التخصص الرئيسي"),
              SizedBox(height: AppConfig.screenHeight * 0.02),
              DropDown("التخصص الفرعي"),
              SizedBox(height: AppConfig.screenHeight * 0.02),
              Container(
                  height: AppConfig.screenHeight * 0.15,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: AppConfig.screenWidth*0.05),
                    child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintMaxLines: 3,
                          hintText: "نبذة عنك\n"
                              "يرجى ذكر الشهادات\n"
                              "التي حصلت عليها في تخصصك\n",
                        )
                    ),
                  )
              ),
              SizedBox(height: AppConfig.screenHeight * 0.02),
              Container(
                  height: AppConfig.screenHeight * 0.06,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: AppConfig.screenWidth*0.05),
                          child: Text(
                            "يرجى إرفاق الشهادات المذكورة بالإعلى",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        )),
                    IconButton(
                      icon: Icon(Icons.cloud_upload),
                    )
                  ],
                ),
              ),
              SizedBox(height: AppConfig.screenHeight * 0.05),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:AppConfig.screenWidth*0.2),
                child: Text("جاري رفع المرفقات"),
              ),
              SizedBox(height: AppConfig.screenHeight * 0.01),
              LinearProgressIndicator(
                value: 0.5,
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),

              ),
              SizedBox(height: AppConfig.screenHeight * 0.04),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:AppConfig.screenWidth*0.1),
                child: Row(children: <Widget>[
                  Icon(Icons.check_box_outline_blank),
                  SizedBox(width: AppConfig.screenWidth * 0.05),
                  Text("أوفق على "),
                  Text("الشروط و الأحكام ",style: TextStyle(color:Variables.primaryColor)),
                ],),
              ),
              SizedBox(height: AppConfig.screenHeight * 0.04),
              CustomerButton("تسجيل",(){}),

            ],
          ),
        ),
      ),
    );
  }
}
