import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class ChooseDilog extends StatelessWidget {
  final Size size;
  final String title;
  final List<String> list;
  const ChooseDilog({
    Key? key,
    required this.size,
    required this.title,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.025,
          vertical: 10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.close,
                  color: txtcol,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                  color: txtcol,
                  fontSize: size.width * 0.045,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            for (int i = 0; i < list.length; i++)
              CustSelectionwid(size: size, title: list[i]),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: CustHalfbtn(
                size: size,
                title: savestr,
                onclick: () {},
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
