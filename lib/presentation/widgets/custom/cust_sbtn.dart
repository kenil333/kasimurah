import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class CustSbtn extends StatelessWidget {
  final Size size;
  final String title;
  final Function func;
  const CustSbtn({
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
          vertical: 5,
          horizontal: size.width * 0.03,
        ),
        decoration: BoxDecoration(
          color: title == canclestr ? butred : butgreen,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: size.width * 0.04,
            color: whit,
          ),
        ),
      ),
    );
  }
}
