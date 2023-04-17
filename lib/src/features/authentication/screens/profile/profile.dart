import 'package:dermist/src/common_widgets/backgrounds.dart';
import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/constants/image_strings.dart';
import 'package:dermist/src/features/authentication/controllers/log_in_controller.dart';
import 'package:dermist/src/utils/theme/widget_themes/log_in_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class Profile extends StatelessWidget{
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: pureWhite,
          ),
          padding: const EdgeInsets.all(0),
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              CustomPaint(
                size: Size(size.width, (size.width*0.8717948717948718).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainterProfile(),
              ),
              SizedBox(
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 80),
                    SizedBox(
                      width: size.width * 0.55,
                      child: const Image(image: AssetImage(imagotipoBlanco))
                    ),
                    const SizedBox(height: 50),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10)
                        ),
                      ),
                      width: 200,
                      height: 200,
                    ),
                    const SizedBox(height: 70,),
                    const Text('Nombre de Usuario',
                      style:TextStyle(
                        color: secondaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text.rich(
                      TextSpan(
                        text: 'Especialidad: ',
                        style:TextStyle(
                            color: secondaryColor,
                            fontSize:16,
                        ),
                        children: [
                          TextSpan(
                            text: 'Especialidad',
                            style:TextStyle(
                              color: primaryBlack,
                              fontSize:16,
                            ),
                          )
                        ]
                      )
                    ),
                    const SizedBox(height: 30),
                    const Text.rich(
                        TextSpan(
                            text: 'Correo Electronico: ',
                            style:TextStyle(
                              color: secondaryColor,
                              fontSize:16,
                            ),
                            children: [
                              TextSpan(
                                text: 'correo@gmail.com',
                                style:TextStyle(
                                  color: primaryBlack,
                                  fontSize:16,
                                ),
                              )
                            ]
                        )
                    ),
                    const SizedBox(height: 50,),
                    ElevatedButton.icon(
                      style: buttonLogIn,
                      onPressed: (){
                        Get.find<LogInController>().signOutGoogle();
                      },
                      icon: const Icon(
                        Icons.logout,
                        size: 20,
                        color: pureWhite,
                      ),
                      label: const Text('Cerrar Sesión')
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
