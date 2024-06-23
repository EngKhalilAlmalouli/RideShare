import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AvailableCarList extends StatelessWidget {
  const AvailableCarList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
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
      ),

      body: Column(
        children: [
          const SizedBox(height: 20,),
        
           const Text("Avaiable cars for ride",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),),
        
            const SizedBox(height: 10,),
        
           const Text("18 cars found",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xffB8B8B8),
            ),),
        
            const SizedBox(height: 20,),

            Center(
               child: Container(
                height: 170,
                width: 362,
                color:const Color(0xffE2F5ED),
                child:  Column(
                  children: [
                   const Row(
                      children: [
                       Column(
                        children: [
                           SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('BMW Cabrio',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
        
                        SizedBox(height: 10,),
                        
                          Text('Automatic   |   3 seats   |   Octane',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffB8B8B8),
                            
                          ),),
                        
        
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(width: 10,),
                            Text('800m (5mins away)',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            
                          ),),
                            
                          ],
                        )
                        ],
                       ),
                       SizedBox(width: 20,),
                       Image(image: AssetImage('assets/iamges/BMW_Cabrio.png'))
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20,),
         
          ElevatedButton(
            onPressed: (){
          context.go('/CarDetails');


            },
           child:  Text('Book later',
           style:  TextStyle(
            fontSize:16 ,
            fontWeight: FontWeight.w500,
            color: Color(0XFF008955),
           ),
           ),
           style: ElevatedButton.styleFrom(backgroundColor: Color(0xffE2F5ED), minimumSize: Size(165, 54)),
           ),
         
           SizedBox(width: 20,),
         
            ElevatedButton(
            onPressed: (){
         
            },
           child:  Text('Ride Now',
           style:  TextStyle(
            fontSize:16 ,
            fontWeight: FontWeight.w500,
            color: Colors.white,
           ),
           ),
           style: ElevatedButton.styleFrom(backgroundColor: Color(0XFF008955), minimumSize: Size(165, 54)),
           ),
                      ],
                    ),
                  ],
                ),
               ),
             ),
        ],
      ),
    );
  }
}