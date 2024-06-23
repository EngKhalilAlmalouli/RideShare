import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rideshare/pages/available_car_list.dart';
import 'package:rideshare/pages/car_details.dart';
import 'package:rideshare/pages/complete_your_profile.dart';
import 'package:rideshare/pages/enable_location.dart';
import 'package:rideshare/pages/onboarding1.dart';
import 'package:rideshare/pages/onboarding2.dart';
import 'package:rideshare/pages/onboarding3.dart';
import 'package:rideshare/pages/select_avilable_car.dart';
import 'package:rideshare/pages/select_transport.dart';
import 'package:rideshare/pages/setpassword.dart';
import 'package:rideshare/pages/signup.dart';
import 'package:rideshare/pages/welcome_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Onboarding1( ),

//       ),
//     );
//   }
// }
 return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
      //   // initialLocation:"/" ,
      routes: [
        GoRoute(path: "/", builder: ((context, state) => const Onboarding1())),
        GoRoute(path: "/Onboarding1", builder: ((context, state) => const Onboarding1())),
        GoRoute(path: "/Onboarding1", builder: ((context, state) => const Onboarding2())),
        GoRoute(path: "/Onboarding2", builder: ((context, state) => const Onboarding2())),
        GoRoute(path: "/Onboarding2", builder: ((context, state) => const Onboarding3())),
        GoRoute(path: "/Onboarding3", builder: ((context, state) => const Onboarding3())),
        GoRoute(path: "/Onboarding3", builder: ((context, state) => const EnableLocation())),
        GoRoute(path: "/EnableLocation", builder: ((context, state) => const EnableLocation())),
        GoRoute(path: "/EnableLocation", builder: ((context, state) =>  WelcomeScreen())),
        GoRoute(path: "/WelcomeScreen", builder: ((context, state) =>  WelcomeScreen())),
        GoRoute(path: "/WelcomeScreen", builder: ((context, state) =>  SignUP())),
        GoRoute(path: "/SignUP", builder: ((context, state) =>  SignUP())),
        GoRoute(path: "/SignUP", builder: ((context, state) =>  SetPassword())),
        GoRoute(path: "/SetPassword", builder: ((context, state) =>  SetPassword())),
        GoRoute(path: "/SetPassword", builder: ((context, state) =>  CompleteYourProfile())),
        GoRoute(path: "/CompleteYourProfile", builder: ((context, state) =>  CompleteYourProfile())),
        GoRoute(path: "/CompleteYourProfile", builder: ((context, state) =>  SelectTranstport())),
        GoRoute(path: "/SelectTranstport", builder: ((context, state) =>  SelectTranstport())),
        GoRoute(path: "/SelectTranstport", builder: ((context, state) =>  SelectAvailableCar())),
        GoRoute(path: "/SelectAvailableCar", builder: ((context, state) =>  SelectAvailableCar())),
        GoRoute(path: "/SelectAvailableCar", builder: ((context, state) =>  AvailableCarList())),
        GoRoute(path: "/AvailableCarList", builder: ((context, state) =>  AvailableCarList())),
        GoRoute(path: "/AvailableCarList", builder: ((context, state) =>  CarDetails())),
        GoRoute(path: "/CarDetails", builder: ((context, state) =>  CarDetails())),
        







        


        

      ]);
}
