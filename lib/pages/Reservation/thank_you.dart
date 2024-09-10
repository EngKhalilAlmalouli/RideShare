import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rideshare/colors.dart';
import 'package:rideshare/pages/home_screen.dart';
import 'package:rideshare/text_button.dart';

class ThankYou extends StatefulWidget {
  final String name;
  const ThankYou({super.key, required this.name});

  @override
  State<ThankYou> createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "Done.svg",
                    width: 124,
                    height: 124,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Thank You",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColors.darkGrey,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Your booking has been placed sent to",
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.darkGrey,
                    ),
                  ),
                  Text(
                    "Mr. ${widget.name}",
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.darkGrey,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 56,
                  width: 340,
                  child: Button(
                      text: "Confirm Ride",
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const HomeScreen(selectedWidget: 0)));
                      }),
                ),
                SizedBox(
                  height: 34,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
