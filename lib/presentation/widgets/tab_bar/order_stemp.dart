import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class OrderStemp extends StatefulWidget {
  final Size size;
  final String title;
  const OrderStemp({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  @override
  State<OrderStemp> createState() => _OrderStempState();
}

class _OrderStempState extends State<OrderStemp> {
  final _string = StringStream();

  @override
  void dispose() {
    _string.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: widget.size.width * 0.04,
      ),
      margin: const EdgeInsets.only(bottom: 30),
      decoration: containerdeco,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: widget.size.width * 0.12,
                height: widget.size.width * 0.12,
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
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Angela Nice",
                          style: TextStyle(
                            fontSize: widget.size.width * 0.035,
                            color: txtcol,
                          ),
                        ),
                        Text(
                          "Order ID : 1234",
                          style: TextStyle(
                            fontSize: widget.size.width * 0.035,
                            color: txtcol,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today at 12:20am",
                          style: TextStyle(
                            fontSize: widget.size.width * 0.028,
                            color: txtcol,
                          ),
                        ),
                        Text(
                          "Total : RM78.60",
                          style: TextStyle(
                            fontSize: widget.size.width * 0.035,
                            color: txtcol,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: 2,
            itemBuilder: (context, i) => Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Mystrey Box",
                        style: TextStyle(
                          fontSize: widget.size.width * 0.03,
                          color: txtcol,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Qty: 2",
                        style: TextStyle(
                          fontSize: widget.size.width * 0.03,
                          color: txtcol,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "RM54.00",
                        style: TextStyle(
                          fontSize: widget.size.width * 0.03,
                          color: txtcol,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            width: double.infinity,
            height: 0.5,
            color: prim.withOpacity(0.7),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.title == paststr)
                CustTextbtn(
                  size: widget.size,
                  title: orderdeliveredstr,
                  func: () {},
                ),
              if (widget.title == ongoingstr)
                StreamBuilder<String?>(
                  stream: _string.stringstream,
                  initialData: null,
                  builder: (context, strsnap) {
                    return CustDropbtn(
                      title: ongoingstr,
                      size: widget.size,
                      val: strsnap.data,
                      li: const ["On The Way", "Order Preparing"],
                      func: (String? value) {
                        _string.stringsink.add(value);
                      },
                    );
                  },
                ),
              CustTextbtn(
                size: widget.size,
                title: viewdetailstr,
                func: () {},
              ),
              if (widget.title == newstr)
                Row(
                  children: [
                    CustSbtn(
                      size: widget.size,
                      title: canclestr,
                      func: () {},
                    ),
                    const SizedBox(width: 10),
                    CustSbtn(
                      size: widget.size,
                      title: acceptstr,
                      func: () {},
                    ),
                  ],
                )
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
