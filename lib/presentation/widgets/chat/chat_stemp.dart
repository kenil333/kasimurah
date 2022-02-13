import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class ChatStemp extends StatelessWidget {
  final Size size;
  final Function chatopen;
  const ChatStemp({
    Key? key,
    required this.size,
    required this.chatopen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        chatopen();
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.04,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.5, color: prim.withOpacity(0.7)),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: size.width * 0.12,
              height: size.width * 0.12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 2, color: prim),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  personimg,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Angela Nice",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: size.width * 0.04,
                            color: txtcol,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.03,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: greeni,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontSize: size.width * 0.04,
                            color: whit,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "I have one Question !",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: size.width * 0.036,
                            color: txtcol,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "09:30am",
                        style: TextStyle(
                          fontSize: size.width * 0.036,
                          color: txtcol,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
