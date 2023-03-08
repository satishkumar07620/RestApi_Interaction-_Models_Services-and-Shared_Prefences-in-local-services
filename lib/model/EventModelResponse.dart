// To parse this JSON data, do
//
//     final eventResponseModel = eventResponseModelFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

EventResponseModel eventResponseModelFromJson(String str) => EventResponseModel.fromJson(json.decode(str));

String eventResponseModelToJson(EventResponseModel data) => json.encode(data.toJson());

class EventResponseModel {
    EventResponseModel({
         this.msg,
         this.error,
         this.data,
    });

    String? msg;
    bool? error;
    List<Datum>? data;

    factory EventResponseModel.fromJson(Map<String, dynamic> json) => EventResponseModel(
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
        required this.description,
        required this.date,
        this.startDate,
        this.endDate,
        this.startTime,
        this.endTime,
        required this.time,
        this.subtitle,
        this.value,
        required this.type,
        required this.location,
        required this.numberOfSeatsAvailable,
        required this.amountAdult,
        required this.amountChild,
        required this.tax,
        required this.status,
        required this.participateBtnStatus,
        this.participants,
        this.eventType,
        required this.tags,
        required this.multislot,
        required this.multislotTime,
        required this.url,
    });

    int id;
    String name;
    String image;
    String description;
    String date;
    DateTime? startDate;
    DateTime? endDate;
    String? startTime;
    String? endTime;
    String time;
    dynamic subtitle;
    dynamic value;
    String type;
    String location;
    String numberOfSeatsAvailable;
    String amountAdult;
    String amountChild;
    String tax;
    String status;
    String participateBtnStatus;
    List<DatumParticipant>? participants;
    dynamic eventType;
    List<dynamic> tags;
    int multislot;
    List<MultislotTime> multislotTime;
    String url;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        description: json["description"],
        date: json["date"],
        startDate: json["start_date"] == null ? null : DateTime.parse(json["start_date"]),
        endDate: json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
        startTime: json["start_time"],
        endTime: json["end_time"],
        time: json["time"],
        subtitle: json["subtitle"],
        value: json["value"],
        type: json["type"],
        location: json["location"],
        numberOfSeatsAvailable: json["number_of_seats_available"],
        amountAdult: json["amount_adult"],
        amountChild: json["amount_child"],
        tax: json["tax"],
        status: json["status"],
        participateBtnStatus: json["participate_btn_status"],
        participants: json["participants"] == null ? [] : List<DatumParticipant>.from(json["participants"]!.map((x) => DatumParticipant.fromJson(x))),
        eventType: json["event_type"],
        tags: List<dynamic>.from(json["tags"].map((x) => x)),
        multislot: json["multislot"],
        multislotTime: List<MultislotTime>.from(json["multislot_time"].map((x) => MultislotTime.fromJson(x))),
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "description": description,
        "date": date,
        "start_date": "${startDate!.year.toString().padLeft(4, '0')}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}",
        "end_date": "${endDate!.year.toString().padLeft(4, '0')}-${endDate!.month.toString().padLeft(2, '0')}-${endDate!.day.toString().padLeft(2, '0')}",
        "start_time": startTime,
        "end_time": endTime,
        "time": time,
        "subtitle": subtitle,
        "value": value,
        "type": type,
        "location": location,
        "number_of_seats_available": numberOfSeatsAvailable,
        "amount_adult": amountAdult,
        "amount_child": amountChild,
        "tax": tax,
        "status": status,
        "participate_btn_status": participateBtnStatus,
        "participants": participants == null ? [] : List<dynamic>.from(participants!.map((x) => x.toJson())),
        "event_type": eventType,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "multislot": multislot,
        "multislot_time": List<dynamic>.from(multislotTime.map((x) => x.toJson())),
        "url": url,
    };
}

class MultislotTime {
    MultislotTime({
        required this.startDate,
        required this.endDate,
        required this.participants,
        required this.seatsAvailable,
    });

    DateTime startDate;
    DateTime endDate;
    List<MultislotTimeParticipant> participants;
    int seatsAvailable;

    factory MultislotTime.fromJson(Map<String, dynamic> json) => MultislotTime(
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        participants: List<MultislotTimeParticipant>.from(json["participants"].map((x) => MultislotTimeParticipant.fromJson(x))),
        seatsAvailable: json["seats_available"],
    );

    Map<String, dynamic> toJson() => {
        "start_date": startDate.toIso8601String(),
        "end_date": endDate.toIso8601String(),
        "participants": List<dynamic>.from(participants.map((x) => x.toJson())),
        "seats_available": seatsAvailable,
    };
}

class MultislotTimeParticipant {
    MultislotTimeParticipant({
        required this.mparticipantName,
        required this.mamount,
    });

    String mparticipantName;
    String mamount;

    factory MultislotTimeParticipant.fromJson(Map<String, dynamic> json) => MultislotTimeParticipant(
        mparticipantName: json["mparticipant_name"],
        mamount: json["mamount"],
    );

    Map<String, dynamic> toJson() => {
        "mparticipant_name": mparticipantName,
        "mamount": mamount,
    };
}

class DatumParticipant {
    DatumParticipant({
        required this.participantName,
        required this.amount,
    });

    String participantName;
    String amount;

    factory DatumParticipant.fromJson(Map<String, dynamic> json) => DatumParticipant(
        participantName: json["participant_name"],
        amount: json["amount"],
    );

    Map<String, dynamic> toJson() => {
        "participant_name": participantName,
        "amount": amount,
    };
}
