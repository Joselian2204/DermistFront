import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/constants/image_strings.dart';
import 'package:dermist/src/features/authentication/controllers/log_in_controller.dart';
import 'package:dermist/src/utils/theme/widget_themes/log_in_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Widgets/background.dart';

class LogIn extends StatelessWidget{
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: accentWhite,
          ),
          padding: const EdgeInsets.all(0),
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              CustomPaint(
                size: Size(size.width, (size.width*1.5531400966183575).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
              ),
              SizedBox(
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 100),
                    SizedBox(
                        width: size.width * 0.67,
                        child: const Image(image: AssetImage(imagotipoBlanco))
                    ),
                    const SizedBox(height: 60),
                    SizedBox(
                        width: size.width * 0.7,
                        child: const Image(image: AssetImage(doctors))
                    ),
                    const SizedBox(height: 70),
                    ElevatedButton.icon(
                        style: buttonLogIn,
                        onPressed: (){
                          Get.find<LogInController>().signInGoogle();
                        },
                        icon: const Image(image: AssetImage(googleLogo), width: 25),
                        label: const Text('Continuar con Google')
                    ),
                    const SizedBox(height: 70),
                    const Text('Al continuar acepta nuestros',
                      style: TextStyle(
                        fontSize: 12,
                        color: smallText,
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                          text: 'Terminos y Condiciones',
                          style: TextStyle(
                            fontSize: 12,
                            color: tertiaryColor,
                          ),
                          children: [
                            TextSpan(
                                text: ' & ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: smallText,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Política de privacidad',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: tertiaryColor
                                    ),
                                  )
                                ]
                            )
                          ]
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
