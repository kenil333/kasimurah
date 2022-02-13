import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class PriceDilog extends StatelessWidget {
  final Size size;
  final String title;
  const PriceDilog({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nprice = TextEditingController();
    final TextEditingController _dprice = TextEditingController();
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
            Row(
              children: [
                CustHalftextfeild(
                  size: size,
                  title: "NORMAL PRICE",
                  controll: _nprice,
                ),
                const SizedBox(width: 15),
                CustHalftextfeild(
                  size: size,
                  title: "DISCOUNT PRICE",
                  controll: _dprice,
                ),
              ],
            ),
            const SizedBox(height: 15),
            CustSmallText(size: size, title: "CHOICE OF DISCOUNT"),
            CustBigDrop(
              title: title,
              size: size,
              val: null,
              li: const ["1", "2", "3"],
              func: (String? value) {},
            ),
            const SizedBox(height: 15),
            CustSmallText(size: size, title: "REASON OF DISCOUNT"),
            CustBigDrop(
              title: title,
              size: size,
              val: null,
              li: const ["1", "2", "3"],
              func: (String? value) {},
            ),
            const SizedBox(height: 15),
            CustSmallText(size: size, title: "EXPIRY DATE"),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.025,
              ),
              decoration: containerdeco,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "11-11-2021",
                    style: TextStyle(
                      fontSize: size.width * 0.035,
                      color: txtcol,
                    ),
                  ),
                  Icon(
                    Icons.calendar_today,
                    color: txtcol,
                    size: size.width * 0.045,
                  ),
                ],
              ),
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
