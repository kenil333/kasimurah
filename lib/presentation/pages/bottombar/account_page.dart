import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import './../../../domain/all.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

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
            child: CustBigtext(size: size, title: accountstr),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                macdeimg,
                width: size.width * 0.25,
                height: size.width * 0.25,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: CustBigtext(size: size, title: shopnamestr),
          ),
          const SizedBox(height: 40),
          CustTextIcobtn(
            size: size,
            title: editshopprofilestr,
            onclick: () {
              pushNewScreen(
                context,
                screen: const EditAccountScren(),
                withNavBar: false,
              );
            },
          ),
          CustTextIcobtn(
            size: size,
            title: paymentinfostr,
            onclick: () {},
          ),
          CustTextIcobtn(
            size: size,
            title: orderstr.capitalize(),
            onclick: () {},
          ),
          CustTextIcobtn(
            size: size,
            title: offerstr.capitalize(),
            onclick: () {},
          ),
          const SizedBox(height: 80),
          Row(
            children: [
              Expanded(child: Container()),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      logoutsvg,
                      fit: BoxFit.contain,
                      height: 40,
                      color: txtcol,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      logoutstr,
                      style: TextStyle(
                        fontSize: size.width * 0.05,
                        color: txtcol,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
