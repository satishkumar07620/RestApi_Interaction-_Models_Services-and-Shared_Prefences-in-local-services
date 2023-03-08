// ignore: file_names
// ignore_for_file: camel_case_types, unused_local_variable, prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings, avoid_print, unused_element, non_constant_identifier_names

import 'dart:convert';
import 'package:feb10uiandapi/apiconfig/endpoints.dart';
import 'package:feb10uiandapi/model/ActiviesInterestsModel.dart';
import 'package:feb10uiandapi/model/AmenitiesModelResponse.dart';
import 'package:feb10uiandapi/model/ConciergeServicesModel.dart';
import 'package:feb10uiandapi/model/EventModelResponse.dart';
import 'package:http/http.dart' as http;

var ep = endpoints();

//dio
// final dio = Dio();
// Future<EventResponseModel> getEventsData() async {
//   print("hiiii events ---------");
//   Response response;
//   response =
//       await dio.get('http://143.110.184.198/ihms/api/event?user_id=1191');
//   print("response -------  ${response.data.toString()}");
//   var jsondatav = jsonEncode(response.data);
//   if (response.statusCode == 200) {
//     final eventResponseModel = eventResponseModelFromJson(jsondatav);
//     print("eventResponseModel -----   $eventResponseModel");
//     return eventResponseModel;
//   } else {
//     return EventResponseModel();
//   }
// }
//
//GET EVENTS....
Future<EventResponseModel> getEventsData() async {
  print("hiiii events ---------");
  final response = await http.get(
    Uri.parse(ep.baseUrl + ep.event + "?user_id=" + "1191"),
  ); //use get method
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    final eventResponseModel = eventResponseModelFromJson(response.body);
    print("return -----   $eventResponseModel");
    return eventResponseModel;
  } else {
    return EventResponseModel();
  }
}

//GET AMENITIES....
Future<AmenitiesModelResponse> getAmenitiesData() async {
  print("hello amenities.........");
  final response = await http.get(
    Uri.parse(ep.baseUrl + ep.amenities + "?user_id=" + "1191"),
  ); //use get method
  var data = jsonDecode(response.body.toString());

  if (response.statusCode == 200) {
    final amenitiesModelResponse =
        amenitiesModelResponseFromJson(response.body);
    print("return -----   $amenitiesModelResponse");
    return amenitiesModelResponse;
  } else {
    return AmenitiesModelResponse();
  }
}

//CONCIERGE SERVICES
Future<ConciergeServicesModel> getConciergeData() async {
  print("hello Concierge.........");
  final response = await http.get(
    Uri.parse(ep.baseUrl + ep.services + "?user_id=" + "1191"),
  ); //use get method
  var data = jsonDecode(response.body.toString());

  if (response.statusCode == 200) {
    final conciergeServicesModel =
        conciergeServicesModelFromJson(response.body);
    print("return -----   $conciergeServicesModel");
    return conciergeServicesModel;
  } else {
    return ConciergeServicesModel();
  }
}

//Acitives and interests
Future<ActiviesInterestsModel> getActiviesData() async {
  print("hello Activies.........");
  final response = await http.get(
    Uri.parse(ep.baseUrl + ep.activities + "?user_id=" + "1191"),
  ); //use get method
  var data = jsonDecode(response.body.toString());

  if (response.statusCode == 200) {
    final activiesInterestsModel =
        activiesInterestsModelFromJson(response.body);
    print("return -----   $activiesInterestsModel");
    return activiesInterestsModel;
  } else {
    return ActiviesInterestsModel();
  }
}
