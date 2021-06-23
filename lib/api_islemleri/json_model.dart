// To parse this JSON data, do
//
//     final ay = ayFromJson(jsonString);

import 'dart:convert';

List<Ay> ayFromJson(String str) => List<Ay>.from(json.decode(str).map((x) => Ay.fromJson(x)));

String ayToJson(List<Ay> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Ay {
  Ay({
    this.ay,
  });

  String ay;

  factory Ay.fromJson(Map<String, dynamic> json) => Ay(
    ay: json["ay"],
  );

  Map<String, dynamic> toJson() => {
    "ay": ay,
  };
}
