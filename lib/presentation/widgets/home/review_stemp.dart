import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './../../../domain/all.dart';

class ReviewStemp extends StatelessWidget {
  final Size size;
  const ReviewStemp({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.05,
        vertical: 20,
      ),
      margin: const EdgeInsets.only(bottom: 30),
      decoration: containerdeco,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
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
                  const SizedBox(width: 10),
                  Text(
                    "Angela Nice",
                    style: TextStyle(
                      fontSize: size.width * 0.04,
                      color: txtcol,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  for (int i = 0; i < 5; i++)
                    Container(
                      margin: const EdgeInsets.only(right: 2),
                      child: SvgPicture.asset(
                        starsvg,
                        height: 15,
                        fit: BoxFit.contain,
                        color: orangcol,
                      ),
                    ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            width: double.infinity,
            height: 0.5,
            color: prim.withOpacity(0.7),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: size.width * 0.1),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Item : Apple",
                      style: TextStyle(
                        fontSize: size.width * 0.035,
                        color: txtcol,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Recive the Item in well condition. Seller Packed it nicely. And also the very good condition. Thumbs UP !",
                      style: TextStyle(
                        fontSize: size.width * 0.035,
                        color: txtcol,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "11-12-2021",
                      style: TextStyle(
                        fontSize: size.width * 0.035,
                        color: txtcol,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
