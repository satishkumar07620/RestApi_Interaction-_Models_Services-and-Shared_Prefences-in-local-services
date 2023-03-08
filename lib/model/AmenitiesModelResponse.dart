// To parse this JSON data, do
//
//     final amenitiesModelResponse = amenitiesModelResponseFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

AmenitiesModelResponse amenitiesModelResponseFromJson(String str) => AmenitiesModelResponse.fromJson(json.decode(str));

String amenitiesModelResponseToJson(AmenitiesModelResponse data) => json.encode(data.toJson());

class AmenitiesModelResponse {
    AmenitiesModelResponse({
         this.msg,
         this.error,
         this.data,
    });

    String? msg;
    bool? error;
    List<Datum>? data;

    factory AmenitiesModelResponse.fromJson(Map<String, dynamic> json) => AmenitiesModelResponse(
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
        required this.location,
        required this.description,
    });

    int id;
    String name;
    String image;
    String icon;
    String location;
    String description;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        icon: json["icon"],
        location: json["location"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "icon": icon,
        "location": location,
        "description": description,
    };
}
