import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class ActiveWidget extends StatelessWidget {
  final Size size;
  const ActiveWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.06,
              vertical: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      sortstr,
                      style: TextStyle(
                        fontSize: size.width * 0.04,
                        color: txtcol,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 20),
                    CustomSvfbtn(
                      svgpath: arrowsvg,
                      callback: () {},
                    ),
                  ],
                ),
                CustomSvfbtn(
                  svgpath: filtsvg,
                  callback: () {},
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
            ),
            itemCount: 4,
            itemBuilder: (context, i) => OfferStemp(size: size),
          ),
        ],
      ),
    );
  }
}
