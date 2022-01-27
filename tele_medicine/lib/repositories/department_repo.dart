import 'package:flutter/services.dart';
import 'package:tele_medicine/models/department_model.dart';

class DepartmentRepo{
  static Future<List<Department>> getDepartmentList()async{
    final response=await rootBundle.loadString("assets/json/doctors_info.json");
    if(response==null){
      return [];
    }else{
     List<Department> deptList= departmentFromJson(response);
     return deptList;
    }
  }
}