import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/features/authentication/models/data.dart';
import 'package:flutter/material.dart';

class DataRecovered extends StatelessWidget{
  final DermistData data;
  const DataRecovered({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                  TextSpan(
                      text: 'Grado Solar: ',
                      style:const TextStyle(
                        color: secondaryColor,
                        fontSize:16,
                      ),
                      children: [
                        TextSpan(
                          text: data.solarGrade,
                          style:const TextStyle(
                            color: primaryBlack,
                            fontSize:16,
                          ),
                        )
                      ]
                  )
              ),
              Text.rich(
                  TextSpan(
                      text: 'Topografía: ',
                      style:const TextStyle(
                        color: secondaryColor,
                        fontSize:16,
                      ),
                      children: [
                        TextSpan(
                          text: data.topography,
                          style:const TextStyle(
                            color: primaryBlack,
                            fontSize:16,
                          ),
                        )
                      ]
                  )
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                  TextSpan(
                      text: 'Ocupación: ',
                      style:const TextStyle(
                        color: secondaryColor,
                        fontSize:16,
                      ),
                      children: [
                        TextSpan(
                          text: data.occupation,
                          style:const TextStyle(
                            color: primaryBlack,
                            fontSize:16,
                          ),
                        )
                      ]
                  )
              ),
              const SizedBox(width: 60),
              Text.rich(
                  TextSpan(
                      text: 'Edad: ',
                      style:const TextStyle(
                        color: secondaryColor,
                        fontSize:16,
                      ),
                      children: [
                        TextSpan(
                          text: data.age,
                          style:const TextStyle(
                            color: primaryBlack,
                            fontSize:16,
                          ),
                        )
                      ]
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}