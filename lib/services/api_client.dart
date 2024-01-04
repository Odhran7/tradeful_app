import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiClient {
  final String baseUrl = "http://192.168.178.123:3000";
  final http.Client httpClient;

  ApiClient({required this.httpClient});

  Future<dynamic> request({required String endpoint, required String method, Map<String, dynamic>? data}) async {
    var url = Uri.parse('$baseUrl$endpoint');
    var response;

    try {
      if (method == 'POST') {
        response = await httpClient.post(url, body: json.encode(data), headers: {"Content-Type": "application/json"});
      } else if (method == 'GET') {
        response = await httpClient.get(url);
      } else if (method == 'PUT') {
        response = await httpClient.put(url, body: json.encode(data), headers: {"Content-Type": "application/json"});
      } else if (method == 'DELETE') {
        response = await httpClient.delete(url);
      } else {
        throw 'Method not supported';
      }

      if (response.statusCode == 200 || response.statusCode == 201) {
        return json.decode(response.body);
      } else {
        throw 'Error: ${response.body}';
      }
    } catch (e) {
      rethrow;
    }
  }
}
