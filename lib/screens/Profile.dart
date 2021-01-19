import 'package:counselor_app/AppConfig.dart';
import 'package:counselor_app/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rating_bar/rating_bar.dart';

import '../CustomWidgetes.dart';

class Profile extends StatefulWidget {
  String name, location;
  double ranting = 0.0;

  Profile(this.name, this.location, this.ranting);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          widget.name,
          style: TextStyle(color: Colors.black),
        )),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  bottom: AppConfig.screenWidth * 0.05,
                  right: AppConfig.screenWidth * 0.15,
                  left: AppConfig.screenWidth * 0.15,
                  top: AppConfig.screenWidth * 0.05),
              child: Column(
                children: <Widget>[
                  Container(
                    height: AppConfig.screenHeight * 0.1,
                    width: AppConfig.screenWidth * 0.2,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset("assets/photo.jpg")),
                  ),
                  Text("${widget.name}"),
                  RatingBar(
                    initialRating: widget.ranting,
                    filledIcon: Icons.star,
                    emptyIcon: Icons.star_border,
                    filledColor: Variables.primaryColor,
                    size: 15,
                  ),
                  SizedBox(height: AppConfig.screenHeight * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: AppConfig.screenHeight * 0.1,
                        width: AppConfig.screenWidth * 0.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Variables.primaryColor)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.location_on,
                                color: Variables.primaryColor),
                            Text("المدينة", style: TextStyle(fontSize: 10)),
                            Text("${widget.location}",
                                style: TextStyle(fontSize: 10))
                          ],
                        ),
                      ),
                      Container(
                        height: AppConfig.screenHeight * 0.1,
                        width: AppConfig.screenWidth * 0.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Variables.primaryColor)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.playlist_add_check,
                                color: Variables.primaryColor),
                            Text("الطلبات المكتملة",
                                style: TextStyle(fontSize: 10)),
                            Text("25", style: TextStyle(fontSize: 10))
                          ],
                        ),
                      ),
                      Container(
                        height: AppConfig.screenHeight * 0.1,
                        width: AppConfig.screenWidth * 0.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Variables.primaryColor)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.cancel, color: Variables.primaryColor),
                            Text("الطلبات الملغية",
                                style: TextStyle(fontSize: 10)),
                            Text("5", style: TextStyle(fontSize: 10))
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(right: AppConfig.screenWidth * 0.02),
              child: Text("نبذة",
                  style: TextStyle(
                      color: Variables.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: EdgeInsets.all(AppConfig.screenWidth*0.03),
              child: Text("بسم الله الرحمن الرحيم \n"
    "اسمي محمد عبد الرحمن - مستشار قانوني و محامي مستشار قانوني و محامي مستشار قانوني و محامي مستشار قانوني و محامي"
                ,
                style: TextStyle(fontSize: 13),

              ),

            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(right: AppConfig.screenWidth * 0.02),
              child: Text("الشهادات و الخبرات",
                  style: TextStyle(
                      color: Variables.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: EdgeInsets.all(AppConfig.screenWidth*0.03),
              child: Text("بسم الله الرحمن الرحيم \n"
                  "اسمي محمد عبد الرحمن - مستشار قانوني و محامي مستشار قانوني و محامي مستشار قانوني و محامي مستشار قانوني و محامي"
                ,
                style: TextStyle(fontSize: 13),

              ),

            ),
            Divider(
            color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(right: AppConfig.screenWidth * 0.02),
              child: Text("التعليقات",
                  style: TextStyle(
                      color: Variables.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
            ),
            CommentItem(),
            CommentItem(),
            CommentItem(),
            SizedBox(height: AppConfig.screenHeight * 0.05),

          ],
        ),
      ),
    );
  }
}
