import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:realtime_chat/models/user_model.dart';

Future<Map> loginUser(UserModel user_model) async {
  final response = await http.post(
    Uri.parse("http://127.0.0.1:5000/user/login"),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({"password": user_model.password, "email": user_model.email}),
  );
  final bodyDecoded = jsonDecode(response.body);
  return bodyDecoded;
}
