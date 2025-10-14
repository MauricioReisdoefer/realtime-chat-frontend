import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:realtime_chat/models/user_model.dart';

Future<UserModel> createUser(UserModel user_model) async {
  final response = await http.post(Uri.parse("http://127.0.0.1:5000/user/create"));
  if (response == Null) {
    return UserModel(id: 0, email: "", name: "", password: "");
  }
  final bodyDecoded = jsonDecode(response.body);
  final data = bodyDecoded["data"];

  return UserModel.fromMap(data);
}
