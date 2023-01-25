import 'package:e_share/View/Qr_scan_page.dart';
import 'package:e_share/View/card_design_page.dart';
import 'package:e_share/View/fill_details_page.dart';
import 'package:e_share/View/forgot_password_page.dart';
import 'package:e_share/View/login_page.dart';
import 'package:e_share/View/my_detail_page.dart';
import 'package:e_share/View/profile_page.dart';
import 'package:e_share/View/register_page.dart';
import 'package:e_share/View/saved_card_detail.dart';
import 'package:e_share/View/saved_card_page.dart';
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
          home: ForgotPasswordPage(),
          getPages: [
            GetPage(name: HomePage.id, page: () => const HomePage()),
            GetPage(name: MyDetail.id, page: () => const MyDetail()),
            GetPage(name: LoginPage.id, page: () => const LoginPage()),
            GetPage(name: RegisterPage.id, page: () => RegisterPage()),
            GetPage(name: FillDetailsPage.id, page: () => FillDetailsPage()),
            GetPage(name: ProfilePage.id, page: () => ProfilePage()),
            GetPage(name: CardDesignPage.id, page: () => CardDesignPage()),
            GetPage(name: SavedCardsPage.id, page: () => SavedCardsPage()),
            GetPage(name: SavedCardDetail.id, page: () => SavedCardDetail()),
            GetPage(name: QrScanPage.id, page: () => QrScanPage()),
            GetPage(
                name: ForgotPasswordPage.id, page: () => ForgotPasswordPage()),
          ],
        );
      },
    );
  }
}
