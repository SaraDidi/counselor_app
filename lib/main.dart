import 'package:counselor_app/CustomWidgetes.dart';
import 'package:counselor_app/screens/Alerts.dart';
import 'package:counselor_app/screens/MyAccount.dart';
import 'package:counselor_app/screens/MyRequests.dart';
import 'package:counselor_app/screens/Offers.dart';
import 'package:counselor_app/screens/Store.dart';
import 'package:counselor_app/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'),
      ],
      locale: Locale('ar'),
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.white)),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final _tabs = [
    MyRequests(),
    Offers(),
    Alerts(),
    Store(),
    MyAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        showUnselectedLabels: true,
        selectedItemColor: Colors.orange[300],
        unselectedItemColor: Colors.black,
        iconSize: 25,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              title: Text("طلباتي"),
              icon:
              MyCircalIcon(Variables.primaryColor, Icons.description)),
          BottomNavigationBarItem(
              title: Text("العروض"),
              icon:
              MyCircalIcon(Variables.primaryColor, Icons.menu)),
          BottomNavigationBarItem(
              title: Text("التنبيهات"),
              icon:
              MyCircalIcon(Variables.primaryColor, Icons.add_alert)),
          BottomNavigationBarItem(
              title: Text("المتجر"),
              icon:
              MyCircalIcon(Variables.primaryColor, Icons.store)),
          BottomNavigationBarItem(
              title: Text("حسابي"),
              icon:
              MyCircalIcon(Variables.primaryColor, Icons.person)),
        ],
      ),
    );
  }
}
