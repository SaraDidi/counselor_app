
import 'package:flutter/material.dart';

import '../variables.dart';

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Variables.scaffoldBGColor,
      body: Center(
        child: Text("Store"),
      ),
    );
  }
}
