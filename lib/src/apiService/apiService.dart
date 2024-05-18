import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  String baseUrl = 'https://itunes.apple.com/search?term=John';

  Future<dynamic> getData() async {
    try {
      var response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        print('response ${jsonDecode(response.body)}');
        return jsonDecode(response.body);
      }
    } catch (e) {
      print('Api exception $e');
    }
  }
}
