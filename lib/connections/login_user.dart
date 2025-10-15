import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> loginUser({required String email, required String password}) async {
  final response = await http.post(
    Uri.parse("http://127.0.0.1:5000/user/login"),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({"password": password, "email": email}),
  );

  if (response.statusCode == 200) {
    final bodyDecoded = jsonDecode(response.body);

    if (bodyDecoded.containsKey('access_token')) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('access_token', bodyDecoded['access_token']);
      return true;
    }
  }

  return false;
}
