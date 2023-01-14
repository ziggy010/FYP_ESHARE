import 'package:e_share/View/card_design_page.dart';
import 'package:e_share/View/fill_details_page.dart';
import 'package:e_share/View/login_page.dart';
import 'package:e_share/View/my_detail_page.dart';
import 'package:e_share/View/profile_page.dart';
import 'package:e_share/View/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

import 'View/home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData(fontFamily: 'poppins'),
          debugShowCheckedModeBanner: false,
          home: HomePage(),
          getPages: [
            GetPage(name: HomePage.id, page: () => HomePage()),
            GetPage(name: MyDetail.id, page: () => MyDetail()),
            GetPage(name: LoginPage.id, page: () => LoginPage()),
            GetPage(name: RegisterPage.id, page: () => RegisterPage()),
            GetPage(name: FillDetailsPage.id, page: () => FillDetailsPage()),
            GetPage(name: ProfilePage.id, page: () => ProfilePage()),
            GetPage(name: CardDesignPage.id, page: () => CardDesignPage()),
          ],
        );
      },
    );
  }
}
