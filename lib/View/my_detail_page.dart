import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';

class MyDetail extends StatelessWidget {
  const MyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBakgroundColor,
      appBar: AppBar(
        title: Text(
          'Visiting Card',
          style: kAppBar,
        ),
      ),
    );
  }
}
