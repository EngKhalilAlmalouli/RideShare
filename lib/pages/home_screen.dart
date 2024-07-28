import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rideshare/colors.dart';
import 'package:rideshare/hexagon.dart';
import 'package:rideshare/pages/favourite.dart';
import 'package:rideshare/pages/home_screen_transport.dart';
import 'package:rideshare/pages/offer.dart';
import 'package:rideshare/pages/profile.dart';
import 'package:rideshare/pages/wallet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  late Widget _selectedWidget;

  @override
  void initState() {
    _selectedWidget = const HomeScreenTransport();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        _selectedWidget,
        Positioned(bottom: 0, child: SvgPicture.asset('assets/bar.svg')),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Home Button
                InkWell(
                  onTap: () => onPressed(0),
                  child: SizedBox(
                    width: 60,
                    child: Column(
                      children: [
                        Icon(
                          _selectedIndex == 0
                              ? Icons.home
                              : Icons.home_outlined,
                          color: _selectedIndex == 0
                              ? AppColors.greenIcon
                              : AppColors.darkGrey,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                              color: _selectedIndex == 0
                                  ? AppColors.greenIcon
                                  : AppColors.darkGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                // Favourite Button
                InkWell(
                  onTap: () => onPressed(1),
                  child: SizedBox(
                    width: 60,
                    child: Column(
                      children: [
                        Icon(
                          _selectedIndex == 1
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          color: _selectedIndex == 1
                              ? AppColors.greenIcon
                              : AppColors.darkGrey,
                        ),
                        Text(
                          'Favourite',
                          style: TextStyle(
                              color: _selectedIndex == 1
                                  ? AppColors.greenIcon
                                  : AppColors.darkGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),

                Column(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 25,
                    ),
                    Text(
                      'Wallet',
                      style: TextStyle(
                          color: _selectedIndex == 5
                              ? AppColors.greenIcon
                              : AppColors.darkGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),

                // Offer Button
                InkWell(
                  onTap: () => onPressed(2),
                  child: SizedBox(
                    width: 60,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 23,
                          child: Image(
                            image: _selectedIndex == 2
                                ? AssetImage(
                                    "assets/Subtract.png",
                                  )
                                : AssetImage(
                                    "assets/Vector-2.png",
                                  ),
                            width: 20,
                          ),
                        ),
                        Text(
                          'Offer',
                          style: TextStyle(
                              color: _selectedIndex == 2
                                  ? AppColors.greenIcon
                                  : AppColors.darkGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                // Profile Button
                InkWell(
                  onTap: () => onPressed(3),
                  child: SizedBox(
                    width: 60,
                    child: Column(
                      children: [
                        Icon(
                          _selectedIndex == 3
                              ? Icons.person
                              : Icons.person_outline,
                          color: _selectedIndex == 3
                              ? AppColors.greenIcon
                              : AppColors.darkGrey,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color: _selectedIndex == 3
                                  ? AppColors.greenIcon
                                  : AppColors.darkGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 17),
          ],
        ),
        Positioned(
          bottom: 80,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // RotatedBox(
              //   quarterTurns: 1,
              //   child: HexagonWidget(
              //     size: 100.0, // Adjust size as needed
              //     color: AppColors.greenIcon,
              //     borderRadius: 0,
              //   ),
              // ),
              InkWell(
                  onTap: () => onPressed(5),
                  child: Image(
                    image: _selectedIndex == 5
                        ? AssetImage(
                            "assets/Subtract-2.png",
                          )
                        : AssetImage(
                            "assets/Vector.png",
                          ),
                    width: 28,
                  )
                  // Icon(
                  //   _selectedIndex == 5
                  //       ? Icons.account_balance_wallet_rounded
                  //       : Icons.account_balance_wallet_outlined,
                  //   color: Colors.white,
                  //   size: 40,
                  // ),
                  )
            ],
          ),
        ),
      ],
    ));
  }

  void onPressed(index) {
    setState(() {
      _selectedIndex = -1;
      _selectedIndex = index;
      if (index == 0) {
        _selectedWidget = const HomeScreenTransport();
      } else if (index == 1) {
        _selectedWidget = const Favourite();
      } else if (index == 2) {
        _selectedWidget = const Wallet();
      } else if (index == 3) {
        _selectedWidget = const Offer();
      } else if (index == 4) {
        _selectedWidget = const Profile();
      } else if (index == 5) {
        _selectedWidget = const Profile();
      }
    });
  }
}