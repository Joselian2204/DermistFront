import 'package:dermist/src/features/authentication/navbar/navbar.dart';
import 'package:dermist/src/features/authentication/screens/form/form.dart';
import 'package:dermist/src/features/authentication/screens/home_page/home_page.dart';
import 'package:dermist/src/features/authentication/screens/profile/profile.dart';
import 'package:get/get.dart';

class AppPage{
  static List<GetPage> routes = [
    GetPage(name: navbar, page: ()=> NavBar()),
    GetPage(name: home, page: ()=> HomePage()),
    GetPage(name: formd, page: ()=> FormDermist()),
    GetPage(name: profile, page: ()=> Profile()),
  ];

  static getnavbar() => navbar;
  static gethome() => home;
  static getform() => formd;
  static getprofile() => profile;

  static String navbar = '/';
  static String home = '/home';
  static String formd = '/formd';
  static String profile = '/profile';
}