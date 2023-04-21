import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/constants/image_strings.dart';
import 'package:dermist/src/features/authentication/screens/home_page/Widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final List<String> _listItem = [
      'assets/images/card/one.png',
      'assets/images/card/two.png',
      'assets/images/card/three.png',
      'assets/images/card/one.png',
      'assets/images/card/two.png',
      'assets/images/card/three.png',
      'assets/images/card/one.png',
      'assets/images/card/two.png',
      'assets/images/card/three.png',
    ];

    final List<String> _listName = [
      'Acne',
      'Queratosis',
      'Urticaria',
      'Acne',
      'Queratosis',
      'Urticaria',
      'Acne',
      'Queratosis',
      'Urticaria',
    ];

    return Scaffold(
      backgroundColor: pureWhite,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10.0),
            Row(
              children: [
                SizedBox(
                  width: size.width * 0.07,
                ),
                Image(
                  image: AssetImage(imagotipoColor),
                  width: size.width * 0.4,
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(height: 80.0),
                SearchBar(),
              ],
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.only(left: 30, right: 30, top: 12),
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                children: _listItem.map((item) => Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(item),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(top: 115),
                        height: 45,
                        width: 160,
                        decoration: const BoxDecoration(
                            color: transparencyBlack,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                        ),
                        child: const Text(
                          'Enfermedad',
                          style: TextStyle(
                            color: pureWhite,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  )
                )).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}