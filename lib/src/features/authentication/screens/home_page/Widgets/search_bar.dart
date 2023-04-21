import 'package:dermist/src/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget{
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Center(
        child: Container(
          width: size.width * 0.84,
          child: TextField(
            style: const TextStyle(
              color: secondaryColor,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: primaryGray,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
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