import 'package:dermist/src/constants/colors.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget{
  const LogIn({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(child: Center(child: Text('Log In', style: TextStyle(color: Colors.white),)))
    );
  }
}