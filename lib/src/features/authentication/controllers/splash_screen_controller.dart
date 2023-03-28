import 'package:dermist/src/features/authentication/screens/log_in/log_in.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();

  @override
  void onInit() {
    startAnimation();
    super.onInit();
  }

  RxBool animate = false.obs;

  Future startAnimation() async{
   try{
     await Future.delayed(const Duration(milliseconds: 500));
     animate.value = true;
     await Future.delayed(const Duration(milliseconds: 3000));
     Get.to(() => LogIn());
   }
   catch(e){
     print(e.toString());
   }
  }
}