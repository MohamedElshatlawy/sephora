import 'dart:convert';

import 'package:http/http.dart';
import 'package:sephora/api/common.dart';
import 'package:sephora/models/userModel.dart';

Future login({String mail, String password}) async {
  String url = Common.baseUrl + "login";
  var params = {"email": mail, "password": password};

  var response = await post(url, body: params);
  print(params);

  if (response.statusCode == 200) {
    try {
      var json = jsonDecode(response.body);
      print(response.body);
      return UserModel.fromJson(json);
    } catch (e) {
      print(e);
      return null;
    }
  }
  throw 'Error connection';
}

Future signup({String name, String email, String password}) async {
  String url = Common.baseUrl + "register";
  var params = {
    "email": email,
    "password": password,
    "name": name,
    "password_confirmation": password
  };
  print(params);
  var response = await post(url, body: params);

  if (response.statusCode == 200) {
    try {
      var json = jsonDecode(response.body);

      return true;
    } catch (e) {
      print("Error:$e");
      return null;
    }
  }
  throw 'Error connection';
}
