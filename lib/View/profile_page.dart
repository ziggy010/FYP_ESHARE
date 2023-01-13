import 'package:e_share/Main%20files/constant.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static const String id = '/profilePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kNavbarColor,
        title: Text(
          'Profile',
          style: kAppBar,
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [],
      ),
    );
  }
}
