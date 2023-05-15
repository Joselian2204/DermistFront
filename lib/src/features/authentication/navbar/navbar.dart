import 'package:dermist/src/common_widgets/bottom_bar_item.dart';
import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/features/authentication/controllers/form_controller.dart';
import 'package:dermist/src/features/authentication/controllers/navbar_controller.dart';
import 'package:dermist/src/features/authentication/screens/form/form.dart';
import 'package:dermist/src/features/authentication/screens/home_page/home_page.dart';
import 'package:dermist/src/features/authentication/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget{
  final controller = Get.put(NavBarController());
  final controller2 = Get.put(FormController());

  NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children:[
            const HomePage(),
            FormDermist(),
            Profile(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: secondaryColor,
          unselectedItemColor: unselectedNav,
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
          items: [
            bottombarItem(Icons.home_rounded, "Inicio"),
            bottombarItem(Icons.add, "Nuevo"),
            bottombarItem(Icons.person_rounded, "Perfil"),
          ],
        )
      );
    });
  }
}
