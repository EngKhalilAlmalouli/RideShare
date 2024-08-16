import 'package:flutter/material.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  TextEditingController oldPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  bool oldPasswordVisible = true;
  bool newPasswordVisible = true;
  bool confirmPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  'Change password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextField(
                  controller: oldPassword,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  obscureText: oldPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'Old Password',
                    hintStyle: const TextStyle(
                      color: Color(0xFFD0D0D0),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    fillColor: Colors.white,
                    suffixIcon: togglePassword(oldPasswordVisible, (newValue) {
                      setState(() {
                        oldPasswordVisible = newValue;
                      });
                    }),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: newPassword,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  obscureText: newPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'New Password',
                    hintStyle: const TextStyle(
                      color: Color(0xFFD0D0D0),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    suffixIcon: togglePassword(newPasswordVisible, (newValue) {
                      setState(() {
                        newPasswordVisible = newValue;
                      });
                    }),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: newPassword,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  obscureText: newPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: const TextStyle(
                      color: Color(0xFFD0D0D0),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    suffixIcon: togglePassword(newPasswordVisible, (newValue) {
                      setState(() {
                        newPasswordVisible = newValue;
                      });
                    }),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            left: 1,
            child: TextButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                label: const Text('Back'),
                icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          ),
        ],
      ),
    );
  }

  Widget togglePassword(bool value, void Function(bool) onChanged) {
    return IconButton(
      onPressed: () {
        onChanged(!value);
      },
      icon: !value
          ? const Icon(Icons.visibility_outlined)
          : const Icon(Icons.visibility_off_outlined),
      color: Colors.grey,
    );
  }
}
