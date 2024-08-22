import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  String baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<dynamic>> getPost() async {
    final response = await http.get(Uri.parse('$baseUrl/posts'));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception('url not found');
    }
  }

  Future<List<dynamic>> getComments() async {
    final response = await http.get(Uri.parse('$baseUrl/comments'));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception('unsuccessful');
    }
  }
}
