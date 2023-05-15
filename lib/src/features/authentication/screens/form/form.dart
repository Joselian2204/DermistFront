import 'package:dermist/src/constants/colors.dart';
import 'package:dermist/src/constants/image_strings.dart';
import 'package:dermist/src/features/authentication/controllers/form_controller.dart';
import 'package:dermist/src/utils/theme/widget_themes/log_in_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class FormDermist extends StatelessWidget {
  final TextEditingController solarGrade = TextEditingController();
  final TextEditingController topography = TextEditingController();
  final TextEditingController occupation = TextEditingController();
  final TextEditingController age = TextEditingController();
  final TextEditingController edad = TextEditingController();
  final TextEditingController associated1 = TextEditingController();
  final TextEditingController associated2 = TextEditingController();
  final TextEditingController associated3 = TextEditingController();
  final TextEditingController associated4 = TextEditingController();
  final TextEditingController previous = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final FormController formController = Get.find<FormController>();

  FormDermist({Key? key}) : super(key: key);

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
          child: Form(
            key: formKey,
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
                    SizedBox(
                      width: size.width * 0.4,
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: solarGrade,
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "Ingrese un grado solar";
                          }
                          return  null;
                        },
                        decoration: InputDecoration(
                          hintText: "horas/día",
                          labelText: 'Grado solar',
                          labelStyle: const TextStyle(
                              color: secondaryColor, fontSize: 14),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: const BorderSide(
                                  color: secondaryColor, width: 1)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: const BorderSide(
                                color: secondaryColor, width: 1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.4,
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: topography,
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "Ingrese la topografía";
                          }
                          return  null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Topografía',
                          hintText: "frente...",
                          labelStyle: const TextStyle(
                              color: secondaryColor, fontSize: 14),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide:
                                  const BorderSide(color: secondaryColor, width: 1)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide:
                                const BorderSide(color: secondaryColor, width: 1),
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
                    SizedBox(
                      width: size.width * 0.4,
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: occupation,
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "Ingrese una ocupación";
                          }
                          return  null;
                        },
                        decoration: InputDecoration(
                          hintText: "obrero...",
                          labelText: 'Ocupación',
                          labelStyle: const TextStyle(
                              color: secondaryColor, fontSize: 14),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: const BorderSide(
                                  color: secondaryColor, width: 1)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: const BorderSide(
                                color: secondaryColor, width: 1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.4,
                      height: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: age,
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "Ingrese una edad";
                          }
                          return  null;
                        },
                        decoration: InputDecoration(
                          hintText: "22...",
                          labelText: 'Edad',
                          labelStyle: const TextStyle(
                              color: secondaryColor, fontSize: 14),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: const BorderSide(
                                  color: secondaryColor, width: 1)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: const BorderSide(
                                color: secondaryColor, width: 1),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Obx(
                  () {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                            height: 50,
                            child: Radio(
                              value: 1,
                              groupValue: formController.genderRadius.value,
                              onChanged: (value) {
                                formController.genderRadius.value = 1;
                              },
                            )),
                        const Text(
                          'Masculino',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: secondaryColor),
                        ),
                        SizedBox(
                            height: 50,
                            child: Radio(
                                value: 2,
                                groupValue: formController.genderRadius.value,
                                onChanged: (value) {
                                  formController.genderRadius.value = 2;
                                })),
                        const Text(
                          'Femenino',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: secondaryColor),
                        ),
                      ],
                    );
                  }
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
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
                              borderSide: const BorderSide(
                                  color: secondaryColor, width: 1)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: const BorderSide(
                                color: secondaryColor, width: 1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
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
                              borderSide: const BorderSide(
                                  color: secondaryColor, width: 1)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: const BorderSide(
                                color: secondaryColor, width: 1),
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
                    SizedBox(
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
                              borderSide: const BorderSide(
                                  color: secondaryColor, width: 1)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: const BorderSide(
                                color: secondaryColor, width: 1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
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
                              borderSide: const BorderSide(
                                  color: secondaryColor, width: 1)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: const BorderSide(
                                color: secondaryColor, width: 1),
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
                      width: size.width *
                          0.85, //     <-- TextField expands to this height.
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
                              borderSide: const BorderSide(
                                  color: secondaryColor, width: 1)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: const BorderSide(
                                color: secondaryColor, width: 1),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                    style: buttonCamera,
                    onPressed: () {
                      if(formKey.currentState!.validate()){
                        Get.defaultDialog(
                            title: "Obtención de Imagen",
                            titleStyle: const TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                            titlePadding: const EdgeInsets.only(top: 20),
                            content: const Text(
                              "Seleccione el metodo de obtención de la imagen",
                              style: TextStyle(
                                color: primaryBlack,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
                            actions: [
                              ElevatedButton.icon(
                                style: buttonDialog,
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    Get.find<FormController>().imagePicker(
                                        source: ImageSource.camera,
                                        age: age.text,
                                        gender: formController.genderRadius.value,
                                        occupation: occupation.text,
                                        solarGrade: solarGrade.text,
                                        topography: topography.text,
                                        associated1: associated1.text,
                                        associated2: associated2.text,
                                        associated3: associated3.text,
                                        associated4: associated4.text,
                                        previous: previous.text);
                                  }
                                },
                                icon: const Icon(
                                  // <-- Icon
                                  Icons.camera_alt,
                                  size: 20.0,
                                ),
                                label: const Text('Camara'), // <-- Text
                              ),
                              ElevatedButton.icon(
                                style: buttonDialog,
                                onPressed: () async {
                                  if (formKey.currentState!.validate()) {
                                    Get.find<FormController>().imagePicker(
                                        source: ImageSource.gallery,
                                        age: age.text,
                                        gender: formController.genderRadius.value,
                                        occupation: occupation.text,
                                        solarGrade: solarGrade.text,
                                        topography: topography.text,
                                        associated1: associated1.text,
                                        associated2: associated2.text,
                                        associated3: associated3.text,
                                        associated4: associated4.text,
                                        previous: previous.text);
                                  }
                                },
                                icon: const Icon(
                                  // <-- Icon
                                  Icons.image,
                                  size: 20.0,
                                ),
                                label: const Text('Galeria'), // <-- Text
                              ),
                            ]);
                      }

                    },
                    icon: const Icon(
                      Icons.camera,
                      size: 20,
                      color: pureWhite,
                    ),
                    label: const Text('Seleccionar imagen'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
