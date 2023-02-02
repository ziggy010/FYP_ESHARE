import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';

class CitizenshipPage extends StatelessWidget {
  static const String id = '/citizenshipPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kNavbarColor,
        title: Text(
          'Citizenship',
          style: kAppBar,
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
