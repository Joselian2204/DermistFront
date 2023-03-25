import 'package:dermist/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:dermist/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:dermist/src/utils/theme/theme.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.fadeIn,
      title: 'Dermist',
      debugShowCheckedModeBanner: false,
      theme: DermistAppTheme.lightTheme,
      home: SplashScreen(),
    );
  }

  @override
  void initState() {
    Get.put<SplashScreenController>(SplashScreenController());
    super.initState();
  }
}
