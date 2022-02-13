import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpConf {
  final http.Client _client = http.Client();
  final String _loginapi = "http://18.140.61.61:9091/markdown-api/login";

  loginapi(
    String username,
    String password,
    Function done,
    Function notfound,
  ) async {
    http.Response _response = await _client.post(
      Uri.parse(_loginapi),
      headers: {"Content-Type": "application/json"},
      body: json.encode({
        "username": username,
        "password": password,
      }),
    );
    if (_response.statusCode == 200) {
      final _body = jsonDecode(_response.body);
      done(_body["token"]);
    } else {
      notfound("Please Enter the Valide Credentials !");
    }
  }
}
