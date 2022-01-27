// To parse this JSON data, do
//
//     final allDoctorsInfo = allDoctorsInfoFromJson(jsonString);

import 'dart:convert';

List<AllDoctorsInfo> allDoctorsInfoFromJson(String str) => List<AllDoctorsInfo>.from(json.decode(str).map((x) => AllDoctorsInfo.fromJson(x)));

String allDoctorsInfoToJson(List<AllDoctorsInfo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllDoctorsInfo {
  AllDoctorsInfo({
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

  factory AllDoctorsInfo.fromJson(Map<String, dynamic> json) => AllDoctorsInfo(
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

  Map<String, dynamic> toJson() => {
    "id": id,
    "department": department,
    "image": image,
    "name": name,
    "degree": degree,
    "bmdc": bmdc,
    "experience": experience,
    "institue": institue,
    "fee": fee,
  };
}
