import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class CustTextWidget extends StatelessWidget {
  final Size size;
  final String title;
  const CustTextWidget({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: size.width * 0.05),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
            color: txtcol,
            fontSize:
                title == registerstr ? size.width * 0.07 : size.width * 0.042,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
