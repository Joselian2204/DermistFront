import 'package:dermist/src/constants/colors.dart';
import 'package:flutter/material.dart';

class DataRecovered extends StatelessWidget{
  const DataRecovered({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.85,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text.rich(
                  TextSpan(
                      text: 'Grado Solar: ',
                      style:TextStyle(
                        color: secondaryColor,
                        fontSize:16,
                      ),
                      children: [
                        TextSpan(
                          text: '1',
                          style:TextStyle(
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
                      style:TextStyle(
                        color: secondaryColor,
                        fontSize:16,
                      ),
                      children: [
                        TextSpan(
                          text: 'frente',
                          style:TextStyle(
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
            children: const [
              Text.rich(
                  TextSpan(
                      text: 'Ocupación: ',
                      style:TextStyle(
                        color: secondaryColor,
                        fontSize:16,
                      ),
                      children: [
                        TextSpan(
                          text: 'obrero',
                          style:TextStyle(
                            color: primaryBlack,
                            fontSize:16,
                          ),
                        )
                      ]
                  )
              ),
              SizedBox(width: 60),
              Text.rich(
                  TextSpan(
                      text: 'Edad: ',
                      style:TextStyle(
                        color: secondaryColor,
                        fontSize:16,
                      ),
                      children: [
                        TextSpan(
                          text: '22',
                          style:TextStyle(
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