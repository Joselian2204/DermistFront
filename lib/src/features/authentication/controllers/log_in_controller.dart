import 'package:dermist/src/features/authentication/navbar/navbar.dart';
import 'package:dermist/src/features/authentication/screens/load_screen/load_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../screens/log_in/log_in.dart';

class LogInController extends GetxController{

  final FirebaseAuth _auth = FirebaseAuth.instance;


  void signInGoogle() async{
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken
    );

    final user = await _auth.signInWithCredential(credential).then((value) => Get.offAll(NavBar()));

  }

  void signOutGoogle() async{
    await GoogleSignIn().signOut();
    Get.offAll(const LogIn());
  }
}