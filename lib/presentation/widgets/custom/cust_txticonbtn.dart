import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class CustTextIcobtn extends StatelessWidget {
  final Size size;
  final String title;
  final Function onclick;
  const CustTextIcobtn({
    Key? key,
    required this.size,
    required this.title,
    required this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onclick();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.08,
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: size.width * 0.042,
                color: txtcol,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: txtcol,
              size: size.width * 0.052,
            ),
          ],
        ),
      ),
    );
  }
}
