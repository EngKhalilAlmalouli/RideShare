import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SelectTranstport extends StatelessWidget {
  const SelectTranstport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
           icon: const Row(
          children: [
            Icon(Icons.arrow_back),
            Text('Back'),
          ],
        ),
           ),
           title: const Center(
             child: Text('Select transport',
             style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
             ),),
           ),
      ),
      body: Center(
        child: Column(
          children: [
           const SizedBox(height: 40,),
          const  Text("Select your transport",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            ),
            SizedBox(height: 40,),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 160,
                    width: 160,
                    color: Color(0XFFE2F5ED),
                    child: Column(
                      children: [
                        SizedBox(height: 30,),
                        Image.asset("assets/iamges/car.png"),
                        SizedBox(height: 10,),
                        Text("Car"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
              
              
                  Container(
                    height: 160,
                    width: 160,
                    color: Color(0XFFE2F5ED),
                    child: Column(
                      children: [
                        SizedBox(height: 30,),
                        Image.asset("assets/iamges/bike.png"),
                        SizedBox(height: 10,),
                        Text("Bike"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
           const SizedBox(height: 20,),
            Center(
              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Container(
                    height: 160,
                    width: 160,
                    color: Color(0XFFE2F5ED),
                    child: Column(
                      children: [
                        SizedBox(height: 30,),
                        Image.asset("assets/iamges/cycle.png"),
                        SizedBox(height: 10,),
                        Text("Cycle"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
              
              
                  Container(
                    height: 160,
                    width: 160,
                    color: Color(0XFFE2F5ED),
                    child: Column(
                      children: [
                        SizedBox(height: 30,),
                        Image.asset("assets/iamges/taxi.png"),
                        SizedBox(height: 10,),
                        Text("Taxi"),
                      ],
                    ),
                  ),
                ],
              ),
            ),


            SizedBox(height: 50,),
            FloatingActionButton(onPressed: (){
              context.go('/SelectAvailableCar');
        
           },
           backgroundColor: const Color(0XFF08B783),
           child: const Text('Go'),
           
           shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100)
          ),
           )
        
          ],
        ),
      ),
    );
  }
}