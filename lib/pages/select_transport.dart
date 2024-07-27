import 'package:flutter/material.dart';

class SelectTranstport extends StatelessWidget {
  const SelectTranstport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const FittedBox(
            child: Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.arrow_back_ios_new_outlined),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Back',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Select transport',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xFF2A2A2A),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Select your transport",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFF5A5A5A),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 160,
                    width: 160,
                    color: const Color(0XFFE2F5ED),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset("assets/car.png"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Car"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 160,
                    width: 160,
                    color: const Color(0XFFE2F5ED),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset("assets/bike.png"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Bike"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 160,
                    width: 160,
                    color: const Color(0XFFE2F5ED),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset("assets/cycle.png"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Cycle"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 160,
                    width: 160,
                    color: const Color(0XFFE2F5ED),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset("assets/taxi.png"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Taxi"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
