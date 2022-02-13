import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class CustBigtext extends StatelessWidget {
  final Size size;
  final String title;
  const CustBigtext({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size.width * 0.05,
        color: txtcol,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
