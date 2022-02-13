import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class CustBigDrop extends StatelessWidget {
  final String title;
  final Size size;
  final String? val;
  final List<String> li;
  final Function func;
  const CustBigDrop({
    Key? key,
    required this.title,
    required this.size,
    required this.val,
    required this.li,
    required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.025,
      ),
      decoration: containerdeco,
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          icon: const Icon(
            Icons.keyboard_arrow_down,
            color: txtcol,
          ),
          isExpanded: true,
          value: val,
          style: TextStyle(
            color: txtcol,
            fontSize: size.width * 0.032,
          ),
          items: li.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  color: txtcol,
                  fontSize: size.width * 0.032,
                ),
              ),
            );
          }).toList(),
          hint: const Text('More'),
          onChanged: (String? value) {
            func(value);
          },
        ),
      ),
    );
  }
}
