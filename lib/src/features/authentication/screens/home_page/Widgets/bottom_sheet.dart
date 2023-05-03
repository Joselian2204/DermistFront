import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/features/authentication/models/sickness.dart';
import 'package:flutter/material.dart';

class BottomSheetCard extends StatelessWidget{
  const BottomSheetCard({Key? key, required this.sickness}) : super(key: key);

  final Sickness sickness;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.7,
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
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                      image: DecorationImage(
                          image: NetworkImage(sickness.image),
                          fit: BoxFit.cover
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
                    children: [
                      Text(sickness.name,
                        style: const TextStyle(
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
                        child: Text(
                          sickness.description,
                          style: const TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}