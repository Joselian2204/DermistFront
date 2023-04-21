import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/constants/image_strings.dart';
import 'package:dermist/src/features/authentication/screens/home_page/Widgets/card.dart';
import 'package:dermist/src/features/authentication/screens/home_page/Widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: pureWhite,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10.0),
            Row(
              children: [
                SizedBox(
                  width: size.width * 0.045,
                ),
                const Image(
                  image: AssetImage(imagotipoColor),
                  width: 167,
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(height:60.0),
                SearchBar(),
              ],
            ),
            CardModel(),
          ],
        ),
      ),
    );
  }
}