import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
            
            },
             icon:const Text('Skip',
             style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
             ),
             ),
             ),
        ],
      ),

      body: Column(
        children: [
         const SizedBox(height: 50,),
          Image.asset('assets/iamges/onboarding2.png'),
         const SizedBox(height: 40,),
          const Text('At anytime',
           style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),),
          const SizedBox(height: 10,),
           const Text('  Sell houses easily with the help of\n Listenoryx and to make this line big I\n       am writing more.',
           style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0XFFA0A0A0)
          ),),
          const SizedBox(height: 100,),

         FloatingActionButton(onPressed: (){
          context.go('/Onboarding3');
         },
         backgroundColor: const Color(0XFF08B783),
         child: const Icon(Icons.arrow_right_alt_rounded),
         
         shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100)
        ),
         )

        ],
      ),
    ); 
  }
}