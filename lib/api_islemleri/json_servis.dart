import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ummugulsum/api_islemleri/json_model.dart';

Future<List<Ay>> fetchData() async {
  final response =
  await http.get(Uri.parse('https://gist.githubusercontent.com/ummu-53/5f7d1bdf25317ae2ed5d4b2ce91f2c4f/raw/b571946236f695ff12631d6e9753a40ebc0ccbc0/ay.json'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new Ay.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}