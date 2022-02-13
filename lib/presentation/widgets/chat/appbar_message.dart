import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './../../../domain/all.dart';

class AppbarMessage extends StatelessWidget {
  final Size size;
  final Function backfunc;
  const AppbarMessage({
    Key? key,
    required this.size,
    required this.backfunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.04,
          vertical: 15,
        ),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                backfunc();
              },
              child: SvgPicture.asset(
                backsvg,
                height: 20,
                fit: BoxFit.contain,
                color: txtcol,
              ),
            ),
            const SizedBox(width: 20),
            Container(
              width: size.width * 0.1,
              height: size.width * 0.1,
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
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                "Angela Nice",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontSize: size.width * 0.042,
                  color: txtcol,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: size.width * 0.1,
              height: size.width * 0.1,
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.02, vertical: 4),
              decoration: BoxDecoration(
                color: txtcol,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 2, color: prim),
              ),
              child: SvgPicture.asset(
                phonesvg,
                fit: BoxFit.contain,
                color: whit,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
