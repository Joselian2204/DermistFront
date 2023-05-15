import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'dart:developer' as developer;

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
   }
   catch(error){
     developer.log(error.toString());
   }
  }
}