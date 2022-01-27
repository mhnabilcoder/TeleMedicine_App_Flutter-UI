import 'package:flutter/services.dart';
import 'package:tele_medicine/models/topDoctors_model.dart';

class TopDoctorsRepo{
  static Future<List<TopDoctor>> getTopDoctors()async{
    final response=await rootBundle.loadString("assets/json/top_doctors.json");
    if(response==null){
      return [];
    }else {
      List<TopDoctor> doctList= topDoctorFromJson(response);
      return doctList;
    }
  }
}