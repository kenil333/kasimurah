import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class CustHalfbtn extends StatelessWidget {
  final Size size;
  final String title;
  final Function onclick;
  const CustHalfbtn({
    Key? key,
    required this.size,
    required this.title,
    required this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.4,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          primary: prim,
        ),
        onPressed: () {
          onclick();
        },
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: size.height * 0.015),
          child: Text(
            title,
            style: TextStyle(fontSize: size.width * 0.038),
          ),
        ),
      ),
    );
  }
}
