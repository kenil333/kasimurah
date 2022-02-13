import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class StockDilog extends StatelessWidget {
  final Size size;
  final String title;
  const StockDilog({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.045,
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
            CustSmallText(size: size, title: "STOCK AVAILABILITY"),
            const SizedBox(height: 5),
            Row(
              children: [
                Icon(
                  Icons.remove_circle,
                  size: size.width * 0.07,
                  color: Colors.red,
                ),
                const SizedBox(width: 5),
                Text(
                  "2",
                  style: TextStyle(
                    fontSize: size.width * 0.05,
                    color: txtcol,
                  ),
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.add_circle,
                  size: size.width * 0.07,
                  color: Colors.green,
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustSmallText(size: size, title: "UOM"),
            CustBigDrop(
              title: title,
              size: size,
              val: null,
              li: const ["1", "2", "3"],
              func: (String? value) {},
            ),
            const SizedBox(height: 25),
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
