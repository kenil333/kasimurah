import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './../../../domain/all.dart';

class MesSentWid extends StatelessWidget {
  final Size size;
  final TextEditingController controll;
  const MesSentWid({
    Key? key,
    required this.size,
    required this.controll,
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
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                controller: controll,
                style: TextStyle(
                  fontSize: size.width * 0.045,
                  color: txtcol,
                ),
                decoration: const InputDecoration(
                  hintText: "Write a Message...",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: size.width * 0.08,
            height: size.width * 0.08,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: greeni,
              borderRadius: BorderRadius.circular(100),
            ),
            child: SvgPicture.asset(
              sendiossvg,
              width: size.width * 0.028,
              fit: BoxFit.contain,
              color: whit,
            ),
          ),
        ],
      ),
    );
  }
}
