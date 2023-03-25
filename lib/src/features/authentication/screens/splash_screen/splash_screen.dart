import 'package:dermist/src/constants/image_strings.dart';
import 'package:dermist/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget{
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.find<SplashScreenController>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children:[
          Obx(() => AnimatedPositioned(
              duration: const Duration(milliseconds: 2400),
                bottom: splashController.animate.value ? 390:370,
                left: 70,
                width: 250,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 2000),
                  opacity: splashController.animate.value ? 1 : 0,
                    child: Image(
                      image: AssetImage(imagotipoColor),
                    )
                )
            ),
          )
        ],
      ),
    );
  }
}