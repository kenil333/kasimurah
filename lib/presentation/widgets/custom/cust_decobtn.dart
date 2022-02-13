import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class CustDeorbtn extends StatelessWidget {
  final Size size;
  final String title;
  final Function onclick;
  const CustDeorbtn({
    Key? key,
    required this.size,
    required this.title,
    required this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.05,
      ),
      child: InkWell(
        onTap: () {
          onclick();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: size.width * 0.045,
          ),
          decoration: containerdeco,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: size.width * 0.05,
                  color: txtcol,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: txtcol,
                size: size.width * 0.055,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
