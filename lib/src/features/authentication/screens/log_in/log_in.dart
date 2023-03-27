import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/constants/image_strings.dart';
import 'package:dermist/src/utils/theme/widget_themes/log_in_btn.dart';
import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.all(0.0),
          margin: const EdgeInsets.all(0.0),
          width: size.width,
          height: size.height,
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
                  onPressed: (){},
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
          /*child: Stack(
            children: [
              /*const Image(image: AssetImage(logInBg),
                fit: BoxFit.fitWidth,
              ),*/
            ],
          ),*/
        ),
      ),
    );
  }
}