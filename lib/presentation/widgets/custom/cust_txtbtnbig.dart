import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class CustTxtbtnBig extends StatelessWidget {
  final Size size;
  final AlignmentGeometry align;
  final String title;
  final Function func;
  const CustTxtbtnBig({
    Key? key,
    required this.size,
    required this.align,
    required this.title,
    required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.06,
        vertical: size.height * 0.005,
      ),
      alignment: align,
      child: TextButton(
        onPressed: () {
          func();
        },
        child: Text(
          title,
          style: TextStyle(
            color: txtcol,
            fontSize: size.width * 0.035,
            letterSpacing: 1.4,
          ),
        ),
      ),
    );
  }
}
