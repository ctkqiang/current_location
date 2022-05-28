library current_location;

import 'dart:convert';

import 'package:current_location/model/location.dart';
import 'package:http/http.dart' as http;

class UserLocation {
  UserLocation._();

  static Future<Location?> getValue() async {
    http.Response response = await http.get(
      Uri.parse('http://ip-api.com/json'),
    );

    if (response.statusCode != 200) {
      Future.error('Failed to get location');
    }

    return Location.fromJson(jsonDecode(response.body));
  }
}
