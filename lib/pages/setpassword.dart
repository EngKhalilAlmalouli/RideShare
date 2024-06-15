import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  bool _isSecurePassword = true;
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
      ),
      body: Center(
        child:  Column(
          children: [
          const  SizedBox(height: 20,),
        
           const Text('Set password',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            ),
        
            const SizedBox(height: 20,),
        
            const Text('Set your password',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0XFFA0A0A0),
            ),
            ),
            const SizedBox(height: 40,),

           TextField(            
            obscureText: _isSecurePassword,
            decoration: InputDecoration(
            filled: true,
            labelText: 'Enter Your Password',
            fillColor: Colors.white ,
            suffixIcon: togglePassword(),
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)),
            ),
            ),


            const SizedBox(height: 40,),

           TextField(            
            obscureText: _isSecurePassword,
            decoration: InputDecoration(
            filled: true,
            labelText: 'Confirm Password',
            fillColor: Colors.white ,
            suffixIcon: togglePassword(),
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)),
            ),
            ),

          const  SizedBox(height: 30,),
         const Text('Atleast 1 number or a special character',
         style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
         ),
         ),
         const SizedBox(height: 40,),
      ElevatedButton(
          onPressed: (){
        context.go('/CompleteYourProfile');

          },
         child: Text('Register',
         style:  TextStyle(
          fontSize:16 ,
          fontWeight: FontWeight.w500,
          color: Colors.white,
         ),
         ),
         style: ElevatedButton.styleFrom(backgroundColor: Color(0XFF008955), minimumSize: Size(340, 54)),
         ),
          ],
        ),
      ),
    );



  }
  Widget togglePassword(){
    return IconButton(onPressed: (){
      setState(() {
        _isSecurePassword = !_isSecurePassword;

      });
    }, icon: _isSecurePassword ? Icon( Icons.visibility) : Icon( Icons.visibility_off),
    color: Colors.grey,);
  }
}