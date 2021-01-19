
import 'package:flutter/material.dart';

import '../variables.dart';

class Alerts extends StatefulWidget {
  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Variables.scaffoldBGColor,
      body: Center(
        child: Text("Alerts"),
      ),
    );
  }
}
