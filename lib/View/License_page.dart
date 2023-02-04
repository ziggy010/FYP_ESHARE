import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';

class MyLicensePage extends StatelessWidget {
  static const String id = '/licensePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kNavbarColor,
        title: Text(
          'License Card',
          style: kAppBar,
        ),
      ),
    );
  }
}
