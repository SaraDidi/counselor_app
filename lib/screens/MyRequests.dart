
import 'package:counselor_app/AppConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:counselor_app/CustomWidgetes.dart';
import '../variables.dart';

class MyRequests extends StatefulWidget {
  @override
  _MyRequestsState createState() => _MyRequestsState();
}

class _MyRequestsState extends State<MyRequests> {


  @override
  Widget build(BuildContext context) {
    AppConfig().init(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Variables.scaffoldBGColor,
        appBar:AppBar(
          title: Center(child: Text("طلباتي",style: TextStyle(color: Colors.black),)),
          bottom:  TabBar(
            indicatorColor: Colors.amber,
            labelColor: Colors.black,
            tabs: <Widget>[

              Tab(
                  text: "الطلبات الحالية"),
              Tab(
                  text: "الطلبات السابقة"),
              Tab(
                  text: "الطلبات الملغية"),


            ],
          ),
        ),
      body: Padding(
        padding: EdgeInsets.all(AppConfig.screenWidth * 0.03),
        child: TabBarView(
            children: [
              ListView(
                children: <Widget>[
                  RequestItem("استشارة تجارية", "130" , "جديد" , "5" , "15/5/1440", Colors.green ,Variables.primaryColor),
                  RequestItem("استشارة قانونية" , "145", "قيد التنفيذ" , "5", "15/5/1440" ,Variables.primaryColor ,Variables.primaryColor),
                ],
                 ),
              ListView(
                children: <Widget>[
                  RequestItem("استشارة تجارية", "155" , "منتهي" , "5" , "15/5/1440", Colors.black54 ,Colors.blue),
                  RequestItem("استشارة إجتماعية" , "171", "منتهي" , "5", "15/5/1440" , Colors.black54 ,Colors.blue),
                  RequestItem("استشارة نفسية", "210" , "منتهي" , "5" , "15/5/1440",  Colors.black54 ,Colors.blue),
                  RequestItem("استشارة طبية" , "255", "منتهي" , "5", "15/5/1440" , Colors.black54 ,Colors.blue),
                ],
              ),
              ListView(
                children: <Widget>[
                  RequestItem("استشارة تجارية", "155" , "ملغي" , "5" , "15/5/1440", Colors.red ,Colors.blue),
                  RequestItem("استشارة إجتماعية" , "171", "ملغي" , "5", "15/5/1440" , Colors.red  ,Colors.blue),
                  RequestItem("استشارة نفسية", "210" ,"ملغي" , "5" , "15/5/1440", Colors.red ,Colors.blue),
                  RequestItem("استشارة طبية" , "255", "ملغي" , "5", "15/5/1440" , Colors.red  ,Colors.blue),
                ],
              ),
            ],
          ),
      ),
        floatingActionButton: FlatButton(
          onPressed: (){},
          child: Container(
           height: AppConfig.screenHeight * 0.05,
            width: AppConfig.screenWidth * 0.25,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Variables.primaryColor,
            ),
            child: Center(child: Text("طلب جديد ",style: TextStyle(color: Colors.white,fontSize: 16),)),
          ),
        ),
      ),
    );
  }
}
