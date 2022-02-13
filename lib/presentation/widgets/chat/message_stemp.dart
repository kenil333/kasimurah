import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class MessageStemp extends StatelessWidget {
  final Size size;
  final bool byme;
  const MessageStemp({
    Key? key,
    required this.size,
    required this.byme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: byme ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: size.width * 0.5),
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.02,
            vertical: 8,
          ),
          margin: EdgeInsets.symmetric(
            vertical: 12,
            horizontal: size.width * 0.05,
          ),
          decoration: BoxDecoration(
            color: byme ? greeni : txtcol,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(10),
              topRight: const Radius.circular(10),
              bottomLeft:
                  byme ? const Radius.circular(10) : const Radius.circular(0),
              bottomRight:
                  byme ? const Radius.circular(0) : const Radius.circular(10),
            ),
          ),
          child: Column(
            children: [
              Text(
                "Is the Order is ready ? Can I order Now ? I want that as soon as possible !",
                style: TextStyle(
                  fontSize: size.width * 0.04,
                  color: whit,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "12:00 am",
                  style: TextStyle(
                    fontSize: size.width * 0.022,
                    color: whit,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
