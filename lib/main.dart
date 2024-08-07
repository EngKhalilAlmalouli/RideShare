import 'package:flutter/material.dart';
import 'package:rideshare/const.dart';
import 'package:rideshare/pages/home_screen.dart';
import 'package:rideshare/pages/onBoarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF08B783)),
        primaryColor: const Color(0xFF08B783),
        primarySwatch: const MaterialColor(
          0xFF08B783,
          <int, Color>{
            50: Color(0xFFFFFFFF),
            100: Color(0xFFFFFFFF),
            200: Color(0xFF80E3D0),
            300: Color(0xFF4DD9BD),
            400: Color(0xFF26D1AF),
            500: Color(0xFF08B783),
            600: Color(0xFF06A377),
            700: Color(0xFF058A69),
            800: Color(0xFF04715C),
            900: Color(0xFF03574A),
          },
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: const Color(0xFF08B783),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(70),
          ),
        ),
      ),
      home: Scaffold(
        body: auth ? const HomeScreen() : const OnBoardingPage(),
      ),
    );
  }
}
