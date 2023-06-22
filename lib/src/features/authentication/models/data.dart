import 'package:dermist/src/features/authentication/models/model_result.dart';

class DermistData {
  String topography;
  String age;
  String solarGrade;
  String occupation;
  String gender;
  String? associated1;
  String? associated2;
  String? associated3;
  String? associated4;
  String? previous;
  String? image;
  List<ModelResult> result;

  DermistData({
    required this.topography,
    required this.age,
    required this.solarGrade,
    required this.occupation,
    required this.gender,
    this.associated1,
    this.associated2,
    this.associated3,
    this.associated4,
    this.previous,
    this.image,
    required this.result,
  });

  Map<String,dynamic> toJson()=>{
    "topography":topography,
    "age":age,
    "solarGrade":solarGrade,
    "occupation": occupation,
    "gender": gender,
    "associated1": associated1,
    "associated2": associated2,
    "associated3": associated3,
    "associated4": associated4,
    "previous": previous,
    "image": image,
  };
}