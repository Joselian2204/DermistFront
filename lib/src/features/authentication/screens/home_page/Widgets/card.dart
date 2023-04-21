import 'package:dermist/src/constants/colors.dart';
import 'package:flutter/material.dart';

class CardModel extends StatelessWidget{
  const CardModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final List<String> _listItem = [
      'assets/images/card/three.png',
      'assets/images/card/two.png',
      'assets/images/card/one.png',
      'assets/images/card/three.png',
      'assets/images/card/two.png',
      'assets/images/card/one.png',
      'assets/images/card/three.png',
      'assets/images/card/two.png',
      'assets/images/card/one.png',
    ];

    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.only(left: 17, right: 17, top: 10),
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
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
                      ),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 1),
                        spreadRadius: -5,
                        blurRadius: 12,
                        color: Color.fromRGBO(201, 201, 201, 1)
                      )
                    ]
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 14, left: 10),
                  margin: const EdgeInsets.only(top: 125),
                  height: 45,
                  width: 180,
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
    );
  }

}