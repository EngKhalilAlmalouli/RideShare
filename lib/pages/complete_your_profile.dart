import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CompleteYourProfile extends StatefulWidget {
  const CompleteYourProfile({super.key});

  @override
  State<CompleteYourProfile> createState() => _CompleteYourProfileState();
}

class _CompleteYourProfileState extends State<CompleteYourProfile> {
  final _value = "-1";
  final _values = "-1";
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
        title: const Center(
          child: Text(
            'Profile',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                const CircleAvatar(
                  radius: 64,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
                Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/iconprofile.png'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Full Name ',
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(
              height: 10,
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
              height: 20,
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
              height: 20,
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Street',
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                  )),
                  value: _value,
                  items: const [
                    DropdownMenuItem(
                      value: '-1',
                      child: Text('city'),
                    ),
                    DropdownMenuItem(
                      value: '1',
                      child: Text('city1'),
                    ),
                    DropdownMenuItem(
                      value: '2',
                      child: Text('city2'),
                    ),
                    DropdownMenuItem(
                      value: '3',
                      child: Text('city3'),
                    ),
                  ],
                  onChanged: (v) {}),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                  )),
                  value: _values,
                  items: const [
                    DropdownMenuItem(
                      value: '-1',
                      child: Text('District'),
                    ),
                    DropdownMenuItem(
                      value: '1',
                      child: Text('District1'),
                    ),
                    DropdownMenuItem(
                      value: '2',
                      child: Text('District2'),
                    ),
                    DropdownMenuItem(
                      value: '3',
                      child: Text('District3'),
                    ),
                  ],
                  onChanged: (v) {}),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size(174, 54)),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF008955),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.go('/SelectTranstport');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF008955),
                        minimumSize: const Size(174, 54)),
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
