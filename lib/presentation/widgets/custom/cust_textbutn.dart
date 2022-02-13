import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class CustTextbtn extends StatelessWidget {
  final Size size;
  final String title;
  final Function func;
  const CustTextbtn({
    Key? key,
    required this.size,
    required this.title,
    required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        func();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 4,
          horizontal: size.width * 0.05,
        ),
        decoration: BoxDecoration(
          color: title == orderdeliveredstr ? screenback : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 1,
            color: title == orderdeliveredstr ? screenback : prim,
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: title == orderdeliveredstr ? txtcol : prim,
            fontSize: size.width * 0.035,
          ),
        ),
      ),
    );
  }
}
