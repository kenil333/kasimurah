import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>
    with SingleTickerProviderStateMixin {
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
            horizontal: size.width * 0.08,
            vertical: 20,
          ),
          alignment: Alignment.centerLeft,
          child: CustBigtext(size: size, title: orderstr),
        ),
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
                  Tab(text: newstr),
                  Tab(text: ongoingstr),
                  Tab(text: paststr),
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
              ListView.builder(
                padding: EdgeInsets.only(
                  left: size.width * 0.05,
                  right: size.width * 0.05,
                  top: 30,
                ),
                itemCount: 2,
                itemBuilder: (context, i) => OrderStemp(
                  size: size,
                  title: newstr,
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.only(
                  left: size.width * 0.05,
                  right: size.width * 0.05,
                  top: 30,
                ),
                itemCount: 2,
                itemBuilder: (context, i) => OrderStemp(
                  size: size,
                  title: ongoingstr,
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.only(
                  left: size.width * 0.05,
                  right: size.width * 0.05,
                  top: 30,
                ),
                itemCount: 2,
                itemBuilder: (context, i) => OrderStemp(
                  size: size,
                  title: paststr,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
