
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}


class _LoginState extends State<Login> {
  @override

  late String email;
  late String Password;


  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.blueGrey,

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
          TextButton(onPressed: (){
            Navigator.pushNamed(context, '/home');
          }, child: Text('SignIn'),),
          TextButton(onPressed: (){
            Navigator.pushNamed(context, '/signup');

          }, child: Text('SignUP'),),
        ],

      ),
    );
  }
}
