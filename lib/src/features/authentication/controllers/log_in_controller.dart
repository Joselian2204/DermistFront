import 'package:dermist/src/features/authentication/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LogInController extends GetxController{

  static LogInController get find => Get.find();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void signInGoogle() async{
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken
    );

    final user = await _auth.signInWithCredential(credential).then((value) => Get.offAll(HomePage()));

  }

  void signOutGoogle() async{
    await GoogleSignIn().signOut();
  }
}