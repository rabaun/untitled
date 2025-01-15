import 'dart:convert';

import 'package:http/http.dart' show Client;

import '../models/user_model.dart';

class ApiService {
  Client client = Client();
  final _baseUrl = 'https://jsonplaceholder.typicode.com/users';

  Future<List<UserModel>?> fetch()  async {
    final response = await client.get(Uri.parse(_baseUrl));
    print(response.body.toString());
    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((user) => UserModel.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
