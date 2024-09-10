import 'package:flutter/material.dart';
import 'package:rideshare/colors.dart';
import 'package:rideshare/const.dart';
import 'package:rideshare/pages/Authentication/welcome_screen.dart';
import 'package:rideshare/pages/Drawer/Settings/settings.dart';
import 'package:rideshare/pages/Drawer/reservations.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: 249,
      child: Padding(
        padding: const EdgeInsets.only(left: 17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/OIP.OY9T9OkwVBgl21r3Mt7dCQHaHa?w=600&h=600&rs=1&pid=ImgDetMain'),
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              userName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.darkGrey,
              ),
            ),
            Text(
              userPhoneNumber,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.darkGrey,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Reservations()));
                },
                label: const Text('Reservations'),
                icon: const Icon(Icons.list)),
            const Divider(),
            TextButton.icon(
                onPressed: () {},
                label: const Text('Complain'),
                icon: const Icon(Icons.contact_support_outlined)),
            const Divider(),
            TextButton.icon(
                onPressed: () {},
                label: const Text('Referral'),
                icon: const Icon(Icons.people_alt_outlined)),
            const Divider(),
            TextButton.icon(
                onPressed: () {},
                label: const Text('About Us'),
                icon: const Icon(Icons.error_outline)),
            const Divider(),
            TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Settings(),
                    ),
                  );
                },
                label: const Text('Settings'),
                icon: const Icon(Icons.settings_outlined)),
            const Divider(),
            TextButton.icon(
                onPressed: () {},
                label: const Text('Help and Support'),
                icon: const Icon(Icons.help_outline)),
            const Divider(),
            TextButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AuthPage(),
                    ),
                  );
                },
                label: const Text('Logout'),
                icon: const Icon(Icons.logout)),
          ],
        ),
      ),
    );
  }
}