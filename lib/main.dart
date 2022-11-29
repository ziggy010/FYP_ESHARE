import 'package:e_share/View/my_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        return MaterialApp(
          theme: ThemeData(fontFamily: 'poppins'),
          debugShowCheckedModeBanner: false,
          initialRoute: HomePage.id,
          routes: {
            HomePage.id: (context) => HomePage(),
          },
        );
      },
    );
  }
}
