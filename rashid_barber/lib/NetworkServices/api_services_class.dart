import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  Future<dynamic> fetchData(api) async {
    final response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData;
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}
