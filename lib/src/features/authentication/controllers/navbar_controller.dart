import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dermist/src/features/authentication/models/sickness.dart';
import 'package:get/get.dart';
import 'dart:developer' as developer;

class NavBarController extends GetxController{
  var tabIndex = 0;
  var loading=Rx<bool>(false);
  final db = FirebaseFirestore.instance;
  var sickList=Rx<List<Sickness>>([]);
  @override
  void onInit() {
    loadData();
    super.onInit();
  }
  void changeTabIndex(int index){
    tabIndex = index;
    update();
  }

  void loadData({String? query})async{
    try{
      loading.value=true;
      List<Sickness> newList=[];
      var collection = db.collection("sickness");
      QuerySnapshot<Map<String,dynamic>> qs;
      if(query!=null && query.isNotEmpty){
        qs = await collection.where("name",isGreaterThanOrEqualTo: query).get();
      }
      else{
        qs= await collection.get();
      }
      for(var doc in qs.docs){
        newList.add(Sickness.fromJson(doc.data()));
      }
      sickList.value=newList;
      loading.value=false;
    }
    catch(error){
      developer.log(error.toString());
      loading.value=false;
    }
  }
}