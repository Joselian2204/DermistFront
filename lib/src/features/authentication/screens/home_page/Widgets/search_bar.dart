import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/features/authentication/controllers/navbar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchBar extends StatelessWidget{
  SearchBar({Key? key}) : super(key: key);

  final controller = Get.find<NavBarController>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Center(
        child: SizedBox(
          width: size.width * 0.9,
          height: 50,
          child: TextField(
            onChanged: (value){
              controller.loadData(query: value);
            },
            style: const TextStyle(
              color: secondaryColor,
            ),
            decoration: InputDecoration(
              errorBorder: InputBorder.none,
              filled: true,
              fillColor: primaryGray,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: BorderSide.none
              ),
              hintText: "ej. acne comedogénico",
              prefixIcon: const Icon(Icons.search_rounded),
              prefixIconColor: secondaryColor,
            ),
          ),
        ),
      ),
    );
  }

}