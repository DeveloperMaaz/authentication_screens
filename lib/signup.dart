import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  final _auth=FirebaseAuth.instance;
  late String email;
  late String Password;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextFormField(
            decoration: InputDecoration(
                labelText: 'Email'
            ),

            onChanged: (value){
              setState(() {
                email=value;
              });
            },

          ),

          TextFormField(
            decoration: InputDecoration(
                labelText: 'Password'
            ),

            obscureText: true,
            onChanged: (value){
              setState(() {
                Password=value;
              });
            },

          ),
          TextButton(onPressed: ()async{
            try{
              final newuser= await _auth .createUserWithEmailAndPassword(
                  email: email, password: Password);
              if(newuser!=null){
                Navigator.pushNamed(context, '/home');
              }
            }
            catch(e){
              print(e);
            }
          },
            child: Text('SignUp'),),
          // TextButton(onPressed: (){}, child: Text('SignUP'),),
        ],

      ),
    );
  }
}
