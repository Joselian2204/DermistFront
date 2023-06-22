import 'package:dermist/src/common_widgets/backgrounds.dart';
import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadScreen extends StatelessWidget{
  const LoadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: secondaryColor
          ),
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              CustomPaint(
                size: Size(size.width, (size.width*2.164102564102564).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainterLoading(),
              ),
              Column(
                children: [
                  const SizedBox(height: 150,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:const  [
                      Image(image: AssetImage(imagotipoBlanco), height: 80,)
                    ],
                  ),
                  const SizedBox(height: 200,),
                  const SpinKitThreeBounce(
                    color: pureWhite,
                    size: 20,
                  ),
                  const SizedBox(height: 200,),
                  const SizedBox(
                    width:300,
                    child: Text("Dermist esta procesando su fotografía, espere un momento...",
                      style: TextStyle(
                          fontSize: 14,
                          color: pureWhite,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}