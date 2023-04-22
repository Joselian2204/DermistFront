import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/constants/image_strings.dart';
import 'package:dermist/src/features/authentication/screens/form/Widgets/form_field.dart';
import 'package:dermist/src/utils/theme/widget_themes/log_in_btn.dart';
import 'package:flutter/material.dart';

class FormDermist extends StatelessWidget {
  const FormDermist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int _value = 1;
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
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: const [
                    Icon(Icons.arrow_back_ios, color: secondaryColor, size: 28),
                    Image(
                      image: AssetImage(imagotipoColor),
                      width: 145,
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    width: size.width * 0.86,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: const Text(
                      'Indique las características asociadas a la lesión presentada en el paciente',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.4,
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "horas/día",
                        labelText: 'Grado solar',
                        labelStyle: const TextStyle(
                            color: secondaryColor, fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                BorderSide(color: secondaryColor, width: 1)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide:
                              BorderSide(color: secondaryColor, width: 1),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.4,
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Topografía',
                        hintText: "frente...",
                        labelStyle: const TextStyle(
                            color: secondaryColor, fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                BorderSide(color: secondaryColor, width: 1)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide:
                              BorderSide(color: secondaryColor, width: 1),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.4,
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "obrero...",
                        labelText: 'Ocupación',
                        labelStyle: const TextStyle(
                            color: secondaryColor, fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                BorderSide(color: secondaryColor, width: 1)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide:
                              BorderSide(color: secondaryColor, width: 1),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.4,
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "22...",
                        labelText: 'Edad',
                        labelStyle: const TextStyle(
                            color: secondaryColor, fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                BorderSide(color: secondaryColor, width: 1)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide:
                              BorderSide(color: secondaryColor, width: 1),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 50,
                      child: Radio(
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {},
                      )),
                  const Text(
                    'Masculino',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: secondaryColor),
                  ),
                  Container(
                      height: 50,
                      child: Radio(
                        value: 2,
                        groupValue: _value,
                        onChanged: (value) {}
                      )),
                  const Text('Femenino',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: secondaryColor
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.4,
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Sintoma asociado 1',
                        labelStyle: const TextStyle(
                            color: secondaryColor, fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                            BorderSide(color: secondaryColor, width: 1)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide:
                          BorderSide(color: secondaryColor, width: 1),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.4,
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Sintoma asociado 2',
                        labelStyle: const TextStyle(
                            color: secondaryColor, fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                            BorderSide(color: secondaryColor, width: 1)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide:
                          BorderSide(color: secondaryColor, width: 1),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.4,
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Sintoma asociado 3',
                        labelStyle: const TextStyle(
                            color: secondaryColor, fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                            BorderSide(color: secondaryColor, width: 1)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide:
                          BorderSide(color: secondaryColor, width: 1),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.4,
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Sintoma asociado 4',
                        labelStyle: const TextStyle(
                            color: secondaryColor, fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                            BorderSide(color: secondaryColor, width: 1)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide:
                          BorderSide(color: secondaryColor, width: 1),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(
                    height: 130,
                    width: size.width * 0.85,//     <-- TextField expands to this height.
                    child: TextField(
                      maxLines: null, // Set this
                      expands: true, // and this
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        labelText: 'Diagnósticos previos',
                        labelStyle: const TextStyle(
                            color: secondaryColor, fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                            BorderSide(color: secondaryColor, width: 1)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide:
                          BorderSide(color: secondaryColor, width: 1),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                  style: buttonCamera,
                  onPressed: (){},
                  icon: const Icon(
                    Icons.camera,
                    size: 20,
                    color: pureWhite,
                  ),
                  label: const Text('Seleccionar imagen')
              )
            ],
          ),
        ),
      ),
    );
  }
}
