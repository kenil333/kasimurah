import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class CustHalftextfeild extends StatelessWidget {
  final Size size;
  final String title;
  final TextEditingController controll;
  const CustHalftextfeild({
    Key? key,
    required this.size,
    required this.title,
    required this.controll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: txtcol,
              fontSize: size.width * 0.032,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: 2,
              horizontal: size.width * 0.032,
            ),
            decoration: BoxDecoration(
              color: whit,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 20,
                  color: txtcol.withOpacity(0.23),
                ),
              ],
            ),
            child: TextField(
              obscureText: false,
              controller: controll,
              style: TextStyle(
                fontSize: size.width * 0.032,
                color: txtcol,
              ),
              decoration: InputDecoration(
                hintText: "Enter ${title.toLowerCase()}",
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
