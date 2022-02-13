import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './../../../domain/all.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.08,
              vertical: 20,
            ),
            alignment: Alignment.centerLeft,
            child: CustBigtext(size: size, title: homestr),
          ),
          WeekWidget(size: size),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
            decoration: containerdeco,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustTextWidget(size: size, title: earningtodaystr),
                          const SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.04),
                            child: Text(
                              "RM 19840",
                              style: TextStyle(
                                fontSize: size.width * 0.06,
                                color: txtcol,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "+8.5%",
                                style: TextStyle(
                                  fontSize: size.width * 0.045,
                                  color: greeni,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 5),
                              SvgPicture.asset(
                                upsvg,
                                height: 25,
                                fit: BoxFit.contain,
                                color: greeni,
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: size.width * 0.04),
                  child: Text(
                    "Compared to (RM 13850 Yesterday)",
                    style: TextStyle(
                      fontSize: size.width * 0.038,
                      color: txtcol,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.02),
            child: CustTextWidget(size: size, title: reviews),
          ),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            itemCount: 2,
            itemBuilder: (context, i) => ReviewStemp(size: size),
          ),
        ],
      ),
    );
  }
}
