import 'package:crypto_dashboard/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:crypto_dashboard/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: () {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.dark,
            darkTheme: ThemeData(
              visualDensity: VisualDensity.adaptivePlatformDensity,
              appBarTheme: const AppBarTheme(
                elevation: 0.0,
                color: kPrimaryColor,
              ),
              scaffoldBackgroundColor: kPrimaryColor,
            ),
            home: const HomePage(),
          );
        });
  }
}
