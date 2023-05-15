import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/features/authentication/models/model_result.dart';
import 'package:flutter/material.dart';

class CardResult extends StatelessWidget {
  final ModelResult result;
  final String image;
  const CardResult({Key? key,required this.result, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.85,
      height: 90,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: pureWhite, 
          boxShadow: [ BoxShadow(
          offset: Offset(0, 3),
          spreadRadius: -2,
          blurRadius: 8,
          color: Color.fromRGBO(88, 88, 88, 0.4),
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const SizedBox(height: 20),
              Image(image: AssetImage(image))
            ],
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 17),
              Row(
                children: [
                  Text(result.name.split("_").map((e) => e.length>1?e[0].toUpperCase()+e.substring(1,e.length):e).join(" "),
                    style: const TextStyle(
                        color: secondaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Text('Probabilidad de Acierto: ${(result.percentage*100).toStringAsFixed(2)}%',
                    style: const TextStyle(
                        fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
