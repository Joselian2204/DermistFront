import 'package:dermist/src/common_widgets/backgrounds.dart';
import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/constants/image_strings.dart';
import 'package:dermist/src/features/authentication/controllers/log_in_controller.dart';
import 'package:dermist/src/utils/theme/widget_themes/log_in_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);

  final logInController = Get.find<LogInController>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Obx(() {
      return Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          color: pureWhite,
        ),
        padding: const EdgeInsets.all(0),
        width: size.width,
        child: Stack(
          children: [
            CustomPaint(
              size: Size(
                  size.width,
                  (size.width * 0.8717948717948718)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
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
                      child: const Image(image: AssetImage(imagotipoBlanco))),
                  const SizedBox(height: 50),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                logInController.currentUser.value?.photoURL ??
                                    ''),
                            fit: BoxFit.cover),
                        color: Colors.grey,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(width: 5, color: pureWhite),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(3, 3),
                            spreadRadius: -3,
                            blurRadius: 5,
                            color: Color.fromRGBO(0, 0, 0, 0.43),
                          )
                        ]),
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    logInController.currentUser.value?.displayName ?? '',
                    style: const TextStyle(
                        color: secondaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 60),
                  Text.rich(TextSpan(
                      text: ' ',
                      style: const TextStyle(
                        color: secondaryColor,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: logInController.currentUser.value?.email ?? '',
                          style: const TextStyle(
                            color: primaryBlack,
                            fontSize: 16,
                          ),
                        )
                      ])),
                  const SizedBox(
                    height: 60,
                  ),
                  ElevatedButton.icon(
                      style: buttonLogIn,
                      onPressed: () {
                        Get.find<LogInController>().signOutGoogle();
                      },
                      icon: const Icon(
                        Icons.logout,
                        size: 20,
                        color: pureWhite,
                      ),
                      label: const Text('Cerrar Sesión'))
                ],
              ),
            ),
          ],
        ),
      ));
    });
  }
}
