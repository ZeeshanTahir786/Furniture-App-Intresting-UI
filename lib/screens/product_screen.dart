import 'package:flutter/material.dart';
import 'package:furnitureapp/components/body.dart';
import 'package:furnitureapp/constants.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('Dashboard'),
      centerTitle: false,
      actions: <Widget>[
        IconButton(icon: Icon(Icons.notifications), onPressed: () {})
      ],
    );
  }
}
