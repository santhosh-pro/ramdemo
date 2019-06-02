import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:ramdemo/models/login_request.dart';
import 'dart:convert' as convert;

import 'package:ramdemo/models/login_response.dart';

class LoginService {
  Future<LoginResponse> login(String username, String password) async {
    LoginRequest request = LoginRequest(username: username, password: password);
    var requestData = convert.jsonEncode(request.toJson());

    final String url =
        'http://ec2-13-126-61-95.ap-south-1.compute.amazonaws.com:81/api/Auth/login';

    final response = await http.post('$url',
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.authorizationHeader: ''
        },
        body: requestData);

    if (response.statusCode <= 200 || response.statusCode >= 400) {
      var result = response.body;


      var responseData = LoginResponse.fromJson(convert.jsonDecode(result));
      
      return (responseData);
    } else {
      return throw Exception('Unable to connect with server');
    }
  }
}
