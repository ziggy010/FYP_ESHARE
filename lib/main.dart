import 'package:e_share/View/License_page.dart';
import 'package:e_share/View/Qr_scan_page.dart';
import 'package:e_share/View/about_us_page.dart';
import 'package:e_share/View/card_design_page.dart';
import 'package:e_share/View/citizenship_page.dart';
import 'package:e_share/View/edit_information_page.dart';
import 'package:e_share/View/faq_page.dart';
import 'package:e_share/View/fill_details_page.dart';
import 'package:e_share/View/forgot_password_page.dart';
import 'package:e_share/View/login_page.dart';
import 'package:e_share/View/my_detail_page.dart';
import 'package:e_share/View/profile_page.dart';
import 'package:e_share/View/register_page.dart';
import 'package:e_share/View/saved_card_detail.dart';
import 'package:e_share/View/saved_card_page.dart';
import 'package:e_share/authentication/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'View/home_page.dart';

// This function initializes Firebase and runs the MyApp widget as the main entry point for the app
void main(List<String> args) async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Initializes the Flutter app bindings
  await Firebase.initializeApp(
    // Initializes Firebase
    options: DefaultFirebaseOptions
        .currentPlatform, // Uses default Firebase options for the current platform
  );
  runApp(
      const MyApp()); // Runs the MyApp widget as the main entry point for the app
}

// MyApp is a stateless widget that serves as the main entry point for the app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // Initializes the ScreenUtil package to set screen sizes
      designSize: const Size(360, 800), // Sets the design size for the screen
      builder: (context, child) {
        return GetMaterialApp(
          // Initializes the Get package for navigation and routing
          theme: ThemeData(
              fontFamily: 'poppins'), // Sets the app's default font to Poppins
          debugShowCheckedModeBanner:
              false, // Disables debug banner in release mode
          home: AuthPage(), // Sets the authentication page as the initial page
          getPages: [
            // Defines named routes for each page/screen of the app
            GetPage(name: HomePage.id, page: () => const HomePage()),
            GetPage(name: MyDetail.id, page: () => const MyDetail()),
            GetPage(name: LoginPage.id, page: () => LoginPage()),
            GetPage(name: RegisterPage.id, page: () => RegisterPage()),
            GetPage(name: FillDetailsPage.id, page: () => FillDetailsPage()),
            GetPage(name: ProfilePage.id, page: () => ProfilePage()),
            GetPage(name: CardDesignPage.id, page: () => CardDesignPage()),
            GetPage(name: SavedCardsPage.id, page: () => SavedCardsPage()),
            GetPage(name: SavedCardDetail.id, page: () => SavedCardDetail()),
            GetPage(name: QrScanPage.id, page: () => QrScanPage()),
            GetPage(
                name: ForgotPasswordPage.id, page: () => ForgotPasswordPage()),
            GetPage(name: FaqPage.id, page: () => FaqPage()),
            GetPage(name: AboutUsPage.id, page: () => AboutUsPage()),
            GetPage(name: CitizenshipPage.id, page: () => CitizenshipPage()),
            GetPage(name: MyLicensePage.id, page: () => MyLicensePage()),
            GetPage(name: EditInformation.id, page: (() => EditInformation())),
            GetPage(name: AuthPage.id, page: (() => AuthPage())),
          ],
        );
      },
    );
  }
}
