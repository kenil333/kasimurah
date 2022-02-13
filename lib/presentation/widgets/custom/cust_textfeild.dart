import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../domain/all.dart';

class CustTextfeild extends StatelessWidget {
  final Size size;
  final String hintstr;
  final String svgpath;
  final TextEditingController controller;
  const CustTextfeild({
    Key? key,
    required this.size,
    required this.hintstr,
    required this.svgpath,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: size.width * 0.01,
        horizontal: size.width * 0.045,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.05,
        vertical: 10,
      ),
      decoration: containerdeco,
      child: Row(
        children: [
          (hintstr == "Address" || hintstr == "Enter product description")
              ? Container()
              : SvgPicture.asset(
                  svgpath,
                  height: 22,
                  fit: BoxFit.contain,
                  color: txtcol,
                ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: (hintstr == "Address" ||
                          hintstr == "Enter product description")
                      ? size.width * 0.02
                      : size.width * 0.04),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                controller: controller,
                style: TextStyle(
                  fontSize: size.width * 0.045,
                  color: txtcol,
                ),
                decoration: InputDecoration(
                  hintText: hintstr,
                  border: InputBorder.none,
                ),
                maxLines: (hintstr == "Address" ||
                        hintstr == "Enter product description")
                    ? 3
                    : 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
