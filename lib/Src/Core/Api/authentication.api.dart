import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../App/Routes/api.routes.dart';

class AuthenticationApi {
  final client = http.Client();
  final headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Access-Control-Allow-Origin': "*",
  };

  Future userLogin(
      {required String useremail, required String userpassword}) async {
    const subUrl = '/auth/login';
    final Uri uri = Uri.parse(ApiRoutes.baseurl + subUrl);
    final http.Response response = await client.post(uri,
        headers: headers,
        body: jsonEncode({
          "useremail": useremail,
          "userpassword": userpassword,
        }));
    final dynamic body = response.body;
    return body;
  }
}
