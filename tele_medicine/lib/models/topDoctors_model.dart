// To parse this JSON data, do
//
//     final topDoctor = topDoctorFromJson(jsonString);

import 'dart:convert';

List<TopDoctor> topDoctorFromJson(String str) => List<TopDoctor>.from(json.decode(str).map((x) => TopDoctor.fromJson(x)));

String topDoctorToJson(List<TopDoctor> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TopDoctor {
  TopDoctor({
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

  factory TopDoctor.fromJson(Map<String, dynamic> json) => TopDoctor(
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
