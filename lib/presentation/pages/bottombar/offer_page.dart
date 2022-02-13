import 'package:flutter/material.dart';
import 'package:kasimurah/presentation/pages/child/add_offer.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import './../../../domain/all.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage>
    with SingleTickerProviderStateMixin {
  final TextEditingController _search = TextEditingController();
  TabController? _tabcontroller;

  @override
  void initState() {
    _tabcontroller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabcontroller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.06,
            vertical: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustBigtext(size: size, title: offerstr),
              Row(
                children: [
                  CustomSvfbtn(
                    svgpath: addsvg,
                    callback: () {
                      pushNewScreen(
                        context,
                        screen: const AddOffer(),
                        withNavBar: false,
                      );
                    },
                  ),
                  const SizedBox(width: 20),
                  CustomSvfbtn(
                    svgpath: filtersvg,
                    callback: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
        CustTextfeild(
          size: size,
          hintstr: "Offer name...",
          svgpath: searchsvg,
          controller: _search,
        ),
        const SizedBox(height: 20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
          child: Stack(
            children: [
              TabBar(
                controller: _tabcontroller,
                indicatorColor: prim,
                labelColor: txtcol,
                indicatorWeight: 3,
                labelStyle: TextStyle(
                  fontSize: size.width * 0.042,
                  fontWeight: FontWeight.bold,
                  color: txtcol,
                ),
                unselectedLabelStyle: TextStyle(
                  color: txtcol,
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.w400,
                ),
                tabs: const [
                  Tab(text: activestr),
                  Tab(text: soldoutstr),
                  Tab(text: deliststr),
                ],
              ),
              Positioned(
                bottom: 1,
                child: Container(
                  width: size.width,
                  height: 0.5,
                  color: prim,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabcontroller,
            children: [
              ActiveWidget(size: size),
              ActiveWidget(size: size),
              ActiveWidget(size: size),
            ],
          ),
        ),
      ],
    );
  }
}
