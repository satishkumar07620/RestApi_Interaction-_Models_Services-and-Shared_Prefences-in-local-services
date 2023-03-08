// To parse this JSON data, do
//
//     final conciergeServicesModel = conciergeServicesModelFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

ConciergeServicesModel conciergeServicesModelFromJson(String str) => ConciergeServicesModel.fromJson(json.decode(str));

String conciergeServicesModelToJson(ConciergeServicesModel data) => json.encode(data.toJson());

class ConciergeServicesModel {
    ConciergeServicesModel({
         this.msg,
         this.error,
         this.data,
    });

    String? msg;
    bool? error;
    List<Datum>? data;

    factory ConciergeServicesModel.fromJson(Map<String, dynamic> json) => ConciergeServicesModel(
        msg: json["msg"],
        error: json["error"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "msg": msg,
        "error": error,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        required this.id,
        required this.name,
        required this.image,
        required this.icon,
        required this.description,
    });

    int id;
    String name;
    String image;
    String icon;
    String description;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        icon: json["icon"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "icon": icon,
        "description": description,
    };
}
