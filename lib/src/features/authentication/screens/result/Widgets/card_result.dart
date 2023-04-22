import 'package:dermist/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:dermist/src/constants/image_strings.dart';

class CardResult extends StatelessWidget {
  const CardResult({Key? key}) : super(key: key);

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
            children: const [
              SizedBox(height: 15),
              Image(image: AssetImage(gold))
            ],
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 17),
              Row(
                children: const [
                  Text('Nombre Enfermedad',
                    style: TextStyle(
                        color: secondaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: const [
                  Text('Probabilidad de Acierto: 100%',
                    style: TextStyle(
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
