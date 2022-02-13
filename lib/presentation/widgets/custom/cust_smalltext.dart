import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class CustSmallText extends StatelessWidget {
  final Size size;
  final String title;
  const CustSmallText({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          color: txtcol,
          fontSize: size.width * 0.032,
        ),
      ),
    );
  }
}
