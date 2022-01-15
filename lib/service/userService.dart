import 'dart:convert';

import 'package:api_chunish_uchun/models/model.dart';
import 'package:http/http.dart' as http;

class ServiseUsers {
  static Future<List<CourseModel>> getUsers() async {
    Uri url = Uri.parse("https://nbu.uz/uz/exchange-rates/json/");
    dynamic response = await http.get(url);
    return (jsonDecode(response.body) as List)
        .map((e) => CourseModel.fromJson(e))
        .toList();
  }
}
