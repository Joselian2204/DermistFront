import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/constants/image_strings.dart';
import 'package:dermist/src/features/authentication/models/data.dart';
import 'package:dermist/src/features/authentication/navbar/navbar.dart';
import 'package:dermist/src/features/authentication/screens/result/Widgets/card_result.dart';
import 'package:dermist/src/features/authentication/screens/result/Widgets/data_registered.dart';
import 'package:dermist/src/utils/theme/widget_themes/log_in_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ObtainedResult extends StatelessWidget{
  final DermistData data;
  const ObtainedResult({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 60, left: 25, right: 25),
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            color: pureWhite,
          ),
          child: Column(
            children: [
              Row(
                children: const [
                  Image(
                    image: AssetImage(imagotipoColor),
                    width: 145,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: size.width * 0.86,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text(
                      'Los  resultados que se obtuvieron por Dermist para el presente caso dermatológico son:',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  DataRecovered(data: data,),
                ],
              ),
              const SizedBox(height: 30),
              if(data.result.isNotEmpty)
                CardResult(result: data.result[0],image: gold),
              const SizedBox(height: 30),
              if(data.result.length>1)
                CardResult(result: data.result[1],image: silver),
              const SizedBox(height: 30),
              if(data.result.length>2)
                CardResult(result: data.result[2],image: copper,),
              const SizedBox(height: 40,),
              ElevatedButton.icon(
                  style: buttonCamera,
                  onPressed: (){
                    Get.offAll(NavBar());
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: pureWhite,
                  ),
                  label: const Text('Pagina Principal')
              )
            ],
          ),
        ),
      ),
    );
  }

}