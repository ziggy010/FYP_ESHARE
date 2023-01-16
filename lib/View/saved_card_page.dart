import 'package:e_share/Main%20files/constant.dart';
import 'package:e_share/View/components/main_components/My_fab.dart';
import 'package:e_share/View/components/main_components/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SavedCardsPage extends StatelessWidget {
  const SavedCardsPage({super.key});

  static const String id = '/SavedCardsPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kNavbarColor,
        title: Text(
          'Saved Cards',
          style: kAppBar,
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: EdgeInsets.all(24.0.sm),
        child: Column(
          children: [],
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(),
      floatingActionButton: MyFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
