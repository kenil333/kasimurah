import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './../../../domain/all.dart';

class AddOffer extends StatelessWidget {
  const AddOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextEditingController _offername = TextEditingController();
    final TextEditingController _description = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: screenback,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          elevation: 0,
        ),
        preferredSize: const Size.fromHeight(0),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.08,
                vertical: 20,
              ),
              alignment: Alignment.centerLeft,
              child: CustBigtext(size: size, title: addofferstr),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: Container()),
                DottedBorder(
                  color: txtcol,
                  strokeWidth: 0.5,
                  dashPattern: const [7, 5],
                  child: SizedBox(
                    width: size.width * 0.35,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          camerasvg,
                          height: 30,
                          fit: BoxFit.contain,
                          color: txtcol,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          takephotostr,
                          style: TextStyle(
                            fontSize: size.width * 0.03,
                            color: txtcol,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: size.width * 0.08),
                DottedBorder(
                  color: txtcol,
                  strokeWidth: 0.5,
                  dashPattern: const [7, 5],
                  child: SizedBox(
                    width: size.width * 0.35,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          imasvg,
                          height: 30,
                          fit: BoxFit.contain,
                          color: txtcol,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          choosefromgallerystr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: size.width * 0.03,
                            color: txtcol,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
            const SizedBox(height: 30),
            CustTextWidget(size: size, title: offernamestr),
            CustTextfeild(
              size: size,
              hintstr: "Enter offer name",
              svgpath: mailsvg,
              controller: _offername,
            ),
            const SizedBox(height: 20),
            CustTextWidget(size: size, title: shopaddressstr),
            CustTextfeild(
              size: size,
              hintstr: "Enter product description",
              svgpath: "null",
              controller: _description,
            ),
            const SizedBox(height: 20),
            CustDeorbtn(
              size: size,
              title: categorystr,
              onclick: () {
                showDialog(
                  context: context,
                  builder: (context) => ChooseDilog(
                    size: size,
                    title: "Select Category",
                    list: const ["Food", "Accessories", "Sports"],
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            CustDeorbtn(
              size: size,
              title: targetcustomerstr,
              onclick: () {
                showDialog(
                  context: context,
                  builder: (context) => ChooseDilog(
                    size: size,
                    title: "Select Your Target Customer",
                    list: const ["Public User", "Charity Organizer"],
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            CustDeorbtn(
              size: size,
              title: pricestr,
              onclick: () {
                showDialog(
                  context: context,
                  builder: (context) => PriceDilog(
                    size: size,
                    title: "Pricing",
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            CustDeorbtn(
              size: size,
              title: stockstr,
              onclick: () {
                showDialog(
                  context: context,
                  builder: (context) => StockDilog(
                    size: size,
                    title: "Stock",
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            CustDeorbtn(
              size: size,
              title: deliverymethodstr,
              onclick: () {
                showDialog(
                  context: context,
                  builder: (context) => ChooseDilog(
                    size: size,
                    title: "Select Your Delivery Method",
                    list: const ["Self Pickup", "Delivery Service"],
                  ),
                );
              },
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustHalfbtn(
                  size: size,
                  title: savedraftstr,
                  onclick: () {},
                ),
                CustHalfbtn(
                  size: size,
                  title: publishstr,
                  onclick: () {},
                ),
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
