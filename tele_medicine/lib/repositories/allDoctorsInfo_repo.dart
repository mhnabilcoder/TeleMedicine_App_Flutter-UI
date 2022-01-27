import 'package:flutter/services.dart';
import 'package:tele_medicine/models/allDoctorsInfo_model.dart';

class AllDoctorsInfoRepo{
  static Future<List<AllDoctorsInfo>> getAllDoctorsInfo()async{
    final response=await rootBundle.loadString("assets/json/all_doctors_info.json");
    if(response==null){
      return [];
    }else {
      List<AllDoctorsInfo> allDoctList= allDoctorsInfoFromJson(response);
      return allDoctList;
    }
  }
}