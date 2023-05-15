import 'package:dermist/src/features/authentication/navbar/navbar.dart';
import 'package:dermist/src/features/authentication/screens/form/form.dart';
import 'package:dermist/src/features/authentication/screens/home_page/home_page.dart';
import 'package:dermist/src/features/authentication/screens/load_screen/load_screen.dart';
import 'package:dermist/src/features/authentication/screens/profile/profile.dart';
import 'package:dermist/src/features/authentication/screens/result/result.dart';
import 'package:get/get.dart';

class AppPage{
  static List<GetPage> routes = [
    GetPage(name: navbar, page: ()=> NavBar()),
    GetPage(name: home, page: ()=> const HomePage()),
    GetPage(name: formd, page: ()=> FormDermist()),
    GetPage(name: profile, page: ()=> Profile()),
    GetPage(name: result, page: ()=> ObtainedResult(data: Get.arguments["dermistData"],listModelResult: Get.arguments["data"])),
    GetPage(name: loading, page: ()=> const LoadScreen())
  ];

  static getnavbar() => navbar;
  static gethome() => home;
  static getform() => formd;
  static getprofile() => profile;
  static getresult() => result;
  static getloadscreen() => loading;

  static String navbar = '/';
  static String home = '/home';
  static String formd = '/formd';
  static String profile = '/profile';
  static String result = '/result';
  static String loading = '/loading';
}