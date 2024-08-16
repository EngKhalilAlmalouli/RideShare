import 'package:flutter/material.dart';
import 'package:rideshare/colors.dart';
import 'package:rideshare/pages/transport/select_avilable_bicycle.dart';

class SelectTransport extends StatelessWidget {
  const SelectTransport({super.key});

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
                    decoration: BoxDecoration(
                      color: AppColors.lightGreen,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.greenIcon,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset("assets/car.png"),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Car",
                          style: TextStyle(
                            color: AppColors.darkGrey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      color: AppColors.lightGreen,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.greenIcon,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset("assets/bike.png"),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Bike",
                          style: TextStyle(
                            color: AppColors.darkGrey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        (MaterialPageRoute(
                          builder: (context) => SelectAvilableBicyclePage(),
                        )),
                      );
                    },
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        color: AppColors.lightGreen,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: AppColors.greenIcon,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Image.asset("assets/cycle.png"),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Bicycle",
                            style: TextStyle(
                              color: AppColors.darkGrey,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      color: AppColors.lightGreen,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.greenIcon,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset("assets/taxi.png"),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Taxi",
                          style: TextStyle(
                            color: AppColors.darkGrey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
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