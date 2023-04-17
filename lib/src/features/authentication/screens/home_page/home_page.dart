import 'package:dermist/src/constants/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: tertiaryColor,
      body: Center(
        child: Text('HOME'),
      ),
    );
  }
}