import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/constants/image_strings.dart';
import 'package:dermist/src/features/authentication/screens/result/Widgets/card_result.dart';
import 'package:dermist/src/features/authentication/screens/result/Widgets/data_registered.dart';
import 'package:dermist/src/utils/theme/widget_themes/log_in_btn.dart';
import 'package:flutter/material.dart';

class ObtainedResult extends StatelessWidget{
  const ObtainedResult({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: const Text(
                      'Los  resultados que se obtuvieron por Dermist para el caso dermatológico presentado son:',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  DataRecovered(),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: const [
                  CardResult()
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: const [
                  CardResult()
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: const [
                  CardResult()
                ],
              ),
              const SizedBox(height: 40,),
              ElevatedButton.icon(
                  style: buttonCamera,
                  onPressed: (){},
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