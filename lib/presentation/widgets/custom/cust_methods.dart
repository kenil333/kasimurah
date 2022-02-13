import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import './../../../domain/all.dart';

class CustMeth {
  custsnak(String error) {
    Get.snackbar(
      "Alert !",
      error,
      backgroundColor: butred,
      borderRadius: 10,
      snackPosition: SnackPosition.TOP,
      colorText: whit,
    );
  }

  connectioncheck(Function moveforward, Function nointernet) async {
    bool result = await InternetConnectionChecker().hasConnection;
    if (result) {
      moveforward();
    } else {
      nointernet();
    }
  }

  routepush(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  routepushreplash(BuildContext context, Widget widget) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }
}
