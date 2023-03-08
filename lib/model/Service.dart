// ignore_for_file: import_of_legacy_library_into_null_safe, file_names, prefer_typing_uninitialized_variables, avoid_print, unused_local_variable

import 'package:feb10uiandapi/model/ActiviesInterestsModel.dart';
import 'package:feb10uiandapi/model/AmenitiesModelResponse.dart';
import 'package:feb10uiandapi/model/ConciergeServicesModel.dart';
import 'package:feb10uiandapi/model/EventModelResponse.dart';
import 'package:http/http.dart' as http;

class Services {
  static Uri url = Uri.parse('http://143.110.184.198/ihms/api/event');
//EVENTS
  Future<List<EventResponseModel>> getEventsData() async {
    List<EventResponseModel> event = [];
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        event = eventResponseModelFromJson(response.body)
            as List<EventResponseModel>;
        return event;
      } else {
        return event;
      }
    } catch (error) {
      return event;
    }
  }

//AMENITIES
  Future<List<AmenitiesModelResponse>> getAmenitiesData() async {
    List<AmenitiesModelResponse> amenities = [];
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        amenities = amenitiesModelResponseFromJson(response.body)
            as List<AmenitiesModelResponse>;
        return amenities;
      } else {
        return amenities;
      }
    } catch (error) {
      return amenities;
    }
  }

//Concierge
  Future<List<ConciergeServicesModel>> getConciergeData() async {
    List<ConciergeServicesModel> services = [];
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        services = conciergeServicesModelFromJson(response.body)
            as List<ConciergeServicesModel>;
        return services;
      } else {
        return services;
      }
    } catch (error) {
      return services;
    }
  }

//Activies & Interests
  Future<List<ActiviesInterestsModel>> getActiviesData() async {
    List<ActiviesInterestsModel> activitieslist = [];
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        activitieslist = activiesInterestsModelFromJson(response.body)
            as List<ActiviesInterestsModel>;
        return activitieslist;
      } else {
        return activitieslist;
      }
    } catch (error) {
      return activitieslist;
    }
  }
}
