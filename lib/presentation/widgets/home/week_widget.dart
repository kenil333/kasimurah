import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class WeekWidget extends StatelessWidget {
  final Size size;
  const WeekWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Row(
        children: [
          for (int i = 0; i < weeklist.length; i++)
            Expanded(
              child: Column(
                children: [
                  Text(
                    weeklist[i],
                    style: TextStyle(
                      fontSize: size.width * 0.032,
                      color: txtcol,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 7),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.01,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: i == 4
                          ? greeni
                          : i == 3
                              ? Colors.green[50]
                              : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      (i + 1).toString(),
                      style: TextStyle(
                        fontSize: size.width * 0.05,
                        color: i == 4 ? whit : txtcol,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
