import 'package:dermist/src/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomSheetCard extends StatelessWidget{
  const BottomSheetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DraggableScrollableSheet(
      initialChildSize: 0.8,
      minChildSize: 0.5,
      maxChildSize: 0.8,
      builder: (_, controller) => Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          color: pureWhite,
        ),
        //padding: const EdgeInsets.all(16),
        child: ListView(
          controller: controller,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(0),
                  height: 250,
                  width: size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/card/one.png'),
                          fit: BoxFit.fitWidth
                      )
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Nombre Enfermedad',
                        style: TextStyle(
                            color: secondaryColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        //color: primaryColor,
                        width: size.width * 0.89,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Text(
                          'La rosácea es una afección común de la piel que causa rubor o enrojecimiento y vasos sanguíneos visibles en la cara. Además, puede producir pequeños bultos llenos de pus. Estos signos y síntomas pueden aparecer durante semanas o meses y luego desaparecer por un tiempo. La rosácea puede confundirse con el acné, otros problemas de la piel o la rubicundez natural.',
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                        child: const Text('Signos',
                          style: TextStyle(
                              color: secondaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: const Text('Sintoma 1...',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}