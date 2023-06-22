import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dermist/src/features/authentication/models/data.dart';
import 'package:dermist/src/features/authentication/models/model_result.dart';
import 'package:dermist/src/features/authentication/screens/load_screen/load_screen.dart';
import 'package:dermist/src/features/authentication/screens/result/result.dart';
import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'dart:developer' as developer;

import 'package:image_picker/image_picker.dart';

class FormController extends GetxController{

  var genderRadius=Rx<int>(1);

  final urlModel="http://34.86.27.73:3000/vgg";
  final db = FirebaseFirestore.instance;

  imagePicker({
    required String topography,
    required String age,
    required String solarGrade,
    required String occupation,
    required int gender,
    required ImageSource source,
    String? associated1,
    String? associated2,
    String? associated3,
    String? associated4,
    String? previous,
})async{

    try{
      final ImagePicker picker = ImagePicker();
      XFile? file=await picker.pickImage(source: source);
      if(file!=null){
        var d=dio.Dio();
        dio.FormData formData = dio.FormData.fromMap({
          "image":
          dio.MultipartFile.fromBytes(await file.readAsBytes(), filename:file.name),
        });
        Get.to(const LoadScreen());
        final response = await d.post(urlModel,data:formData,options: dio.Options(responseType: dio.ResponseType.json));
        DermistData dermistData=DermistData(
            topography: topography,
            age: age,
            solarGrade: solarGrade,
            occupation: occupation,
            gender: gender==1?"m":"f",
            associated1: associated1,
            associated2: associated2,
            associated3: associated3,
            associated4: associated4,
            previous: previous
        );
        await db.collection("dermistData").add(dermistData.toJson());
        Get.off(ObtainedResult(data: dermistData,listModelResult: List.from(response.data.map((e)=>ModelResult.fromJson(e)).toList())));
      }
    }
    catch(error){
      developer.log(error.toString());
    }
  }
}