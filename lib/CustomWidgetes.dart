import 'package:counselor_app/screens/Profile.dart';
import 'package:counselor_app/variables.dart';
import 'package:flutter/material.dart';
import 'AppConfig.dart';
import 'package:rating_bar/rating_bar.dart';

class MyCircalIcon extends StatelessWidget {
  Color color;

  IconData icon;

  MyCircalIcon(this.color, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConfig.screenHeight * 0.05,
      width: AppConfig.screenWidth * 0.07,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}

class RequestItem extends StatelessWidget {
  String title, num, stat, offers, date;

  Color itemColor, iconColor;

  RequestItem(this.title, this.num, this.stat, this.offers, this.date,
      this.itemColor, this.iconColor);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppConfig.screenWidth * 0.04),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15), topLeft: Radius.circular(15)),
        ),
        elevation: 3,
        child: Container(
          decoration: BoxDecoration(
              border: Border(
            right: BorderSide(width: 4, color: itemColor),
          )),
          child: Padding(
            padding: EdgeInsets.all(AppConfig.screenWidth * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(title, style: TextStyle(fontSize: 18)),
                    Text("#$num")
                  ],
                ),
                Text("السلام عليكم و رحمة الله و بركاته عندي أستشارة",
                    style: TextStyle(color: Colors.grey[600]),
                    overflow: TextOverflow.ellipsis),
                SizedBox(height: AppConfig.screenWidth * 0.03),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppConfig.screenWidth * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          MyCircalIcon(iconColor, Icons.data_usage),
                          Text("الحالة:" " $stat",
                              style: TextStyle(fontSize: 12))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          MyCircalIcon(iconColor, Icons.menu),
                          Text("العروض:" " $offers",
                              style: TextStyle(fontSize: 12))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          MyCircalIcon(iconColor, Icons.date_range),
                          Text("التاريخ:" " $date",
                              style: TextStyle(fontSize: 12))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OfferItem extends StatelessWidget {
  String name, location, price;

  double rating;

  OfferItem(this.name, this.location, this.price, this.rating);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppConfig.screenWidth * 0.03),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConfig.screenWidth * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      MyCircalIcon(Variables.primaryColor, Icons.location_on),
                      Text(location),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.only(top: AppConfig.screenHeight * 0.02),
                        child: Container(
                          height: AppConfig.screenHeight * 0.1,
                          width: AppConfig.screenWidth * 0.2,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset("assets/photo.jpg")),
                        ),
                      ),
                      SizedBox(height: AppConfig.screenHeight * 0.005),
                      Text(name),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      MyCircalIcon(Variables.primaryColor, Icons.attach_money),
                      Text("ريال" "$price"),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Profile(name, location, rating)));
                  },
                  child: Container(
                    height: AppConfig.screenHeight * 0.05,
                    width: AppConfig.screenWidth * 0.3,
                    decoration: BoxDecoration(
                        color: Variables.primaryColor,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15))),
                    child: Center(
                        child: Text("الملف الشخصي",
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
                RatingBar(
                  initialRating: rating,
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                  filledColor: Variables.primaryColor,
                  size: 15,
                ),
                Container(
                  height: AppConfig.screenHeight * 0.05,
                  width: AppConfig.screenWidth * 0.3,
                  decoration: BoxDecoration(
                      color: Variables.primaryColor,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(15))),
                  child: Center(
                      child: Text("قبول العرض",
                          style: TextStyle(color: Colors.white))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomerButton extends StatelessWidget {
  String title;

  void Function() nextPage;

  CustomerButton(this.title, this.nextPage);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConfig.screenHeight * 0.05,
      width: AppConfig.screenWidth * 0.7,
      child: FlatButton(
        onPressed: nextPage,
        color: Variables.primaryColor,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Text(title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
      ),
    );
  }
}

class CustomerTextField extends StatelessWidget {
  String hint;

  TextInputType textInputType;

  CustomerTextField(this.hint, this.textInputType);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppConfig.screenHeight * 0.06,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: AppConfig.screenWidth * 0.05),
          child: TextFormField(
              keyboardType: textInputType,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
              )),
        ));
  }
}

class CustomerPasswordField extends StatelessWidget {
  String hint;

  CustomerPasswordField(this.hint);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppConfig.screenHeight * 0.06,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppConfig.screenWidth * 0.05),
            child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hint,
                ))));
  }
}

class CommentItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppConfig.screenWidth * 0.03),
      child: Card(
        elevation: 3,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: AppConfig.screenWidth * 0.02,
              left: AppConfig.screenWidth * 0.03,
              child: RatingBar(
                initialRating: 2,
                filledIcon: Icons.star,
                emptyIcon: Icons.star_border,
                filledColor: Variables.primaryColor,
                size: 15,
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      SizedBox(height: AppConfig.screenHeight*0.005),
                      Container(
                        height: AppConfig.screenHeight * 0.05,
                        width: AppConfig.screenWidth * 0.2,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset("assets/photo.jpg")),
                      ),
                      SizedBox(height: AppConfig.screenHeight*0.005),
                      Text(
                        "فهد",
                        style: TextStyle(color: Variables.primaryColor),
                      ),
                    ],
                  ),
                  Container(
                      height: AppConfig.screenHeight * 0.08,
                      child: VerticalDivider(thickness: 1, color: Colors.grey)),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppConfig.screenWidth * 0.05),
                      child: Text(
                          "تعليق المستخدم تعليق المستخد تعليق المستخدم تعليق المستخدم"
                          "تعليق المستخدم تعليق المستخد تعليق المستخدم تعليق المستخدم",
                          style: TextStyle(fontSize: 14),
                          maxLines: 2),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountType extends StatelessWidget {
  String type;
  IconData icon;

  AccountType(this.type, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConfig.screenWidth * 0.35,
      width: AppConfig.screenWidth * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, color: Variables.primaryColor, size: 50),
          SizedBox(height: AppConfig.screenHeight * 0.01),
          Text(
            type,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}

class CounselorAccountType extends StatelessWidget {
  String type;
  IconData icon;

  CounselorAccountType(this.type, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConfig.screenWidth * 0.27,
      width: AppConfig.screenWidth * 0.27,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(width: 2, color: Variables.primaryColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, color: Variables.primaryColor),
            SizedBox(height: AppConfig.screenHeight * 0.01),
            Text(type)
          ],
        ),
      ),
    );
  }
}

class DropDown extends StatelessWidget {
  String hint;

  DropDown(this.hint);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppConfig.screenHeight * 0.06,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: AppConfig.screenWidth * 0.05),
                child: TextFormField(
                    decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hint,
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: AppConfig.screenWidth * 0.03),
              child: DropdownButton(
                elevation: 0,
                icon: Icon(Icons.arrow_drop_down),
              ),
            )
          ],
        ));
  }
}

class CustomerTextPhoneField extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppConfig.screenHeight * 0.06,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: new BorderRadius.circular(10.0),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                EdgeInsets.symmetric(horizontal: AppConfig.screenWidth * 0.05),
                child: TextFormField(
                    keyboardType: TextInputType.phone,
                    textDirection: TextDirection.ltr,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:"رقم الجوال"

                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: AppConfig.screenWidth*0.03),
              child: Text("+966 | ",
                  textDirection:TextDirection.ltr,
                style: TextStyle(color: Colors.grey[600]),

              ),
            )
          ],
        ));
  }
}