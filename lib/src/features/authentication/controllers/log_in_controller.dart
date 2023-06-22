import 'package:dermist/src/features/authentication/models/dermatologist.dart';
import 'package:dermist/src/features/authentication/navbar/navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../screens/log_in/log_in.dart';
import 'dart:developer' as developer;
class LogInController extends GetxController{
  var currentUser=Rx<Dermatologist?>(null);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void onInit() {
    verifiedLogIn();
    super.onInit();
  }
  void verifiedLogIn() async{
    try{
      await Future.delayed(const Duration(milliseconds: 3500));
      bool isSignedIn = await GoogleSignIn().isSignedIn();
      if(isSignedIn){
        currentUser.value = Dermatologist(_auth.currentUser?.displayName??"", _auth.currentUser?.email??"", _auth.currentUser?.photoURL??"");
        Get.offAll(()=>NavBar());
      }
      else{
        Get.offAll(const LogIn());
      }
    }
    catch(error){
      developer.log(error.toString());
      Get.offAll(const LogIn());
    }
  }

  void signInGoogle() async{
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken
    );

    await _auth.signInWithCredential(credential);
    currentUser.value = currentUser.value = Dermatologist(_auth.currentUser?.displayName??"", _auth.currentUser?.email??"", _auth.currentUser?.photoURL??"");
    Get.offAll(NavBar());
  }

  void signOutGoogle() async{
    await GoogleSignIn().signOut();
    Get.offAll(const LogIn());
  }
}