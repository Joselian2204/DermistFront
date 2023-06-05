import 'package:dermist/src/features/authentication/controllers/form_controller.dart';
import 'package:dermist/src/features/authentication/controllers/log_in_controller.dart';
import 'package:dermist/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:dermist/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder((){
        Get.put<LogInController>(LogInController());
        Get.put<FormController>(FormController());

      }),
      defaultTransition: Transition.fadeIn,
      title: 'Dermist',
      debugShowCheckedModeBanner: false,
      theme: DermistAppTheme.lightTheme,
      home: SplashScreen(),
    );
  }
}
