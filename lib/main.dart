import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rideshare/pages/available_car_list.dart';
import 'package:rideshare/pages/car_details.dart';
import 'package:rideshare/pages/complete_your_profile.dart';
import 'package:rideshare/pages/enable_location.dart';
import 'package:rideshare/pages/home_screen.dart';
import 'package:rideshare/pages/home_screen_transport.dart';
import 'package:rideshare/pages/map.dart';
import 'package:rideshare/pages/onBoarding_page.dart';
import 'package:rideshare/pages/select_avilable_car.dart';
import 'package:rideshare/pages/select_transport.dart';
import 'package:rideshare/pages/sign_up_page.dart';
import 'package:rideshare/pages/signup.dart';
import 'package:rideshare/pages/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
      home: const Scaffold(
        // body: SetPassword(
        //     firstName: 'firstName',
        //     lastName: 'lastName',
        //     username: 'sdjhfgk',
        //     phone: '0937254836',
        //     birthDate: '2001-06-15'),
        body: HomeScreen(),
      ),
    );
  }
}
//   return MaterialApp.router(
//     theme: ThemeData(
//
//       useMaterial3: true,
//       colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF08B783)),
//       primaryColor: const Color(0xFF08B783),
//       primarySwatch: const MaterialColor(
//         0xFF08B783,
//         <int, Color>{
//           50: Color(0xFFE0F7F4),
//           100: Color(0xFFB3EDE3),
//           200: Color(0xFF80E3D0),
//           300: Color(0xFF4DD9BD),
//           400: Color(0xFF26D1AF),
//           500: Color(0xFF08B783),
//           600: Color(0xFF06A377),
//           700: Color(0xFF058A69),
//           800: Color(0xFF04715C),
//           900: Color(0xFF03574A),
//         },
//       ),
//       floatingActionButtonTheme: FloatingActionButtonThemeData(
//         backgroundColor: const Color(0xFF08B783),
//         elevation: 0,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(70),
//         ),
//       ),
//     ),
//     debugShowCheckedModeBanner: false,
//     routerConfig: _router,
//   );
// }

final GoRouter _router = GoRouter(
    // initialLocation:"/" ,
    routes: [
      GoRoute(path: "/", builder: ((context, state) => const OnBoardingPage())),
      GoRoute(
          path: "/OnBoardingPage",
          builder: ((context, state) => const OnBoardingPage())),
      GoRoute(
          path: "/OnBoardingPage",
          builder: ((context, state) => const MapPage())),
      GoRoute(path: "/MapPage", builder: ((context, state) => const MapPage())),
      GoRoute(
          path: "/Onboarding3",
          builder: ((context, state) => const EnableLocation())),
      GoRoute(
          path: "/EnableLocation",
          builder: ((context, state) => const EnableLocation())),
      GoRoute(
          path: "/EnableLocation",
          builder: ((context, state) => const WelcomeScreen())),
      GoRoute(
          path: "/WelcomeScreen",
          builder: ((context, state) => const WelcomeScreen())),
      GoRoute(
          path: "/WelcomeScreen",
          builder: ((context, state) => const SignUP())),
      GoRoute(path: "/SignUP", builder: ((context, state) => const SignUP())),
      // GoRoute(
      //     path: "/SignUP", builder: ((context, state) => const SetPassword())),
      // GoRoute(
      //     path: "/SetPassword",
      //     builder: ((context, state) => const SetPassword())),
      GoRoute(
          path: "/SetPassword",
          builder: ((context, state) => const CompleteYourProfile())),
      GoRoute(
          path: "/CompleteYourProfile",
          builder: ((context, state) => const CompleteYourProfile())),
      GoRoute(
          path: "/CompleteYourProfile",
          builder: ((context, state) => const SelectTransport())),
      GoRoute(
          path: "/SelectTranstport",
          builder: ((context, state) => const SelectTransport())),
      GoRoute(
          path: "/SelectTranstport",
          builder: ((context, state) => const SelectAvailableCar())),
      GoRoute(
          path: "/SelectAvailableCar",
          builder: ((context, state) => const SelectAvailableCar())),
      GoRoute(
          path: "/SelectAvailableCar",
          builder: ((context, state) => const AvailableCarList())),
      GoRoute(
          path: "/AvailableCarList",
          builder: ((context, state) => const AvailableCarList())),
      GoRoute(
          path: "/AvailableCarList",
          builder: ((context, state) => const CarDetails())),
      GoRoute(
          path: "/CarDetails",
          builder: ((context, state) => const CarDetails())),
    ]);
// }
