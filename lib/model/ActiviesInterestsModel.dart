// To parse this JSON data, do
//
//     final activiesInterestsModel = activiesInterestsModelFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

ActiviesInterestsModel activiesInterestsModelFromJson(String str) => ActiviesInterestsModel.fromJson(json.decode(str));

String activiesInterestsModelToJson(ActiviesInterestsModel data) => json.encode(data.toJson());

class ActiviesInterestsModel {
    ActiviesInterestsModel({
         this.msg,
         this.error,
         this.data,
    });

    String? msg;
    bool? error;
    List<Datum>? data;

    factory ActiviesInterestsModel.fromJson(Map<String, dynamic> json) => ActiviesInterestsModel(
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
        required this.url,
        required this.location,
        required this.showtags,
    });

    int id;
    String name;
    String image;
    String icon;
    String description;
    String url;
    String location;
    List<String> showtags;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        icon: json["icon"],
        description: json["description"],
        url: json["url"],
        location: json["location"],
        showtags: List<String>.from(json["showtags"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "icon": icon,
        "description": description,
        "url": url,
        "location": location,
        "showtags": List<dynamic>.from(showtags.map((x) => x)),
    };
}
