import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  final _value = "-1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Row(
            children: [
              Icon(Icons.arrow_back),
              Text('Back'),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const Text(
            'Sign up with your email or\n phone number',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          TextField(
            obscureText: false,
            decoration: InputDecoration(
              filled: true,
              labelText: 'Name',
              fillColor: Colors.white,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          TextField(
            obscureText: false,
            decoration: InputDecoration(
              filled: true,
              labelText: 'Email',
              fillColor: Colors.white,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          IntlPhoneField(
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              labelText: 'Your mobile number',
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
            initialCountryCode: 'IN',
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                )),
                value: _value,
                items: const [
                  DropdownMenuItem(
                    value: '-1',
                    child: Text('Gender'),
                  ),
                  DropdownMenuItem(
                    value: '1',
                    child: Text('male'),
                  ),
                  DropdownMenuItem(
                    value: '2',
                    child: Text('female'),
                  ),
                  DropdownMenuItem(
                    value: '3',
                    child: Text('other'),
                  ),
                ],
                onChanged: (v) {}),
          ),
          Row(
            children: [
              Image.asset('assets/check.png'),
              const SizedBox(
                width: 10,
              ),
              const Text(
                  'By signing up. you agree to the Terms of service and\n Privacy policy.')
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/SetPassword');
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFF008955), minimumSize: const Size(340, 54)),
            child: const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
