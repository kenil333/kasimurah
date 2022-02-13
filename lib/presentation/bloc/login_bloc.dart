import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './../../domain/all.dart';

class LoginBloc {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  final StreamController<bool> _loading = StreamController<bool>();
  StreamSink<bool> get _loadingsink => _loading.sink;
  Stream<bool> get loadingstream => _loading.stream;

  applylogin(Function done) {
    _loadingsink.add(true);
    if (username.text.isEmpty) {
      CustMeth().custsnak("Please Enter the User name !");
      _loadingsink.add(false);
    } else if (password.text.isEmpty) {
      CustMeth().custsnak("Please Enter the Password !");
      _loadingsink.add(false);
    } else {
      HttpConf().loginapi(
        username.text,
        password.text,
        (String token) async {
          final SharedPreferences _prefs =
              await SharedPreferences.getInstance();
          await _prefs.setString("UserName", username.text.trim());
          await _prefs.setString("Password", username.text.trim());
          await _prefs.setString("Token", token);
          done();
          _loadingsink.add(false);
        },
        (String error) {
          CustMeth().custsnak(error);
          _loadingsink.add(false);
        },
      );
    }
  }

  void dispose() {
    _loading.close();
    username.dispose();
    password.dispose();
  }
}
