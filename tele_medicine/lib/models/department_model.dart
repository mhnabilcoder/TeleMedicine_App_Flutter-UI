// To parse this JSON data, do
//
//     final department = departmentFromJson(jsonString);

import 'dart:convert';

List<Department> departmentFromJson(String str) => List<Department>.from(json.decode(str).map((x) => Department.fromJson(x)));


class Department {
  Department({
    this.id,
    this.name,
    this.doctorList,
  });

  int? id;
  String? name;
  List<DoctorList>? doctorList;

  factory Department.fromJson(Map<String, dynamic> json) => Department(
    id: json["id"],
    name: json["name"],
    doctorList: List<DoctorList>.from(json["doctor_list"].map((x) => DoctorList.fromJson(x))),
  );

}

class DoctorList {
  DoctorList({
    this.id,
    this.department,
    this.image,
    this.name,
    this.degree,
    this.bmdc,
    this.experience,
    this.institue,
    this.fee,
  });

  int? id;
  String? department;
  String? image;
  String? name;
  String? degree;
  String? bmdc;
  String? experience;
  String? institue;
  String? fee;

  factory DoctorList.fromJson(Map<String, dynamic> json) => DoctorList(
    id: json["id"],
    department: json["department"],
    image: json["image"],
    name: json["name"],
    degree: json["degree"],
    bmdc: json["bmdc"],
    experience: json["experience"],
    institue: json["institue"],
    fee: json["fee"],
  );


}
