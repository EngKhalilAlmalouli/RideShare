import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CompleteYourProfile extends StatefulWidget {
  const CompleteYourProfile({super.key});

  @override
  State<CompleteYourProfile> createState() => _CompleteYourProfileState();
}

class _CompleteYourProfileState extends State<CompleteYourProfile> {

  var _value = "-1";
  var _values = "-1";
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
             child: Text('Profile',
             style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
             ),),
           ),
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
               const CircleAvatar(
                  radius: 64,
                  backgroundImage: AssetImage('assets/iamges/profile.png'),
                ),
                Positioned(child: IconButton(onPressed: (){},
                 icon: Image.asset('assets/iamges/iconprofile.png'),
                ),
                bottom: -10,
                left: 80,
                ),
              ],
            ),
          const SizedBox(height: 10,),

          TextField(            
            obscureText: false,
            decoration: InputDecoration(
            filled: true,
            labelText: 'Full Name ',
            fillColor: Colors.white ,
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)),
            ),
            ),

            const SizedBox(height: 10,),

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
         const SizedBox(height: 20,),

           TextField(            
            obscureText: false,
            decoration: InputDecoration(
            filled: true,
            labelText: 'Email',
            fillColor: Colors.white ,
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)),
            ),
            ),
            const SizedBox(height: 20,),

           TextField(            
            obscureText: false,
            decoration: InputDecoration(
            filled: true,
            labelText: 'Street',
            fillColor: Colors.white ,
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)),
            ),
            ),

            const SizedBox(height: 20,),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
            )
          ),
          value: _value,
          items: const [
            DropdownMenuItem(child: Text('city'),value: '-1',),
            DropdownMenuItem(child: Text('city1'),value: '1',),
            DropdownMenuItem(child: Text('city2'),value: '2',),
            DropdownMenuItem(child: Text('city3'),value: '3',),
         
          ],
           onChanged: (v){}),
       ),

        const SizedBox(height: 20,),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: DropdownButtonFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
            )
          ),
          value: _values,
          items: const [
            DropdownMenuItem(child: Text('District'),value: '-1',),
            DropdownMenuItem(child: Text('District1'),value: '1',),
            DropdownMenuItem(child: Text('District2'),value: '2',),
            DropdownMenuItem(child: Text('District3'),value: '3',),
         
          ],
           onChanged: (v){}),
       ),

                SizedBox(height: 20,),

       Row(
        children: [
          
         SizedBox(width: 20,),

        ElevatedButton(
          onPressed: (){},
         child:  Text('Cancel',
         style:  TextStyle(
          fontSize:16 ,
          fontWeight: FontWeight.w500,
          color: Color(0XFF008955),
         ),
         ),
         style: ElevatedButton.styleFrom(backgroundColor: Colors.white, minimumSize: Size(174, 54)),
         ),

         SizedBox(width: 20,),

          ElevatedButton(
          onPressed: (){
        context.go('/HomeScreenTransport');

          },
         child:  Text('Save',
         style:  TextStyle(
          fontSize:16 ,
          fontWeight: FontWeight.w500,
          color: Colors.white,
         ),
         ),
         style: ElevatedButton.styleFrom(backgroundColor: Color(0XFF008955), minimumSize: Size(174, 54)),
         ),
        ],
       ),

         
          ],
        ),
      ),
    );
  }
}