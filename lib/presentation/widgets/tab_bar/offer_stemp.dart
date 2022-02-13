import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class OfferStemp extends StatefulWidget {
  final Size size;
  const OfferStemp({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  State<OfferStemp> createState() => _OfferStempState();
}

class _OfferStempState extends State<OfferStemp> {
  final _string = StringStream();

  @override
  void dispose() {
    _string.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 2,
        left: widget.size.width * 0.04,
        right: widget.size.width * 0.04,
        bottom: 18,
      ),
      margin: const EdgeInsets.only(bottom: 30),
      decoration: containerdeco,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: widget.size.width * 0.25,
                height: widget.size.width * 0.25,
                child: Image.asset(
                  productimg,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Offer Name',
                    style: TextStyle(
                      fontSize: widget.size.width * 0.04,
                      color: txtcol,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '\$0.00',
                    style: TextStyle(
                      fontSize: widget.size.width * 0.04,
                      color: txtcol,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Stock   10",
                          style: TextStyle(
                            fontSize: widget.size.width * 0.035,
                            color: txtcol,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Sold     0",
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Likes   10",
                      style: TextStyle(
                        fontSize: widget.size.width * 0.035,
                        color: txtcol,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Views   0",
                      style: TextStyle(
                        fontSize: widget.size.width * 0.035,
                        color: txtcol,
                      ),
                    ),
                  ],
                ),
              ),
              StreamBuilder<String?>(
                stream: _string.stringstream,
                initialData: null,
                builder: (context, strsnap) {
                  return CustDropbtn(
                    title: offerstr,
                    size: widget.size,
                    val: strsnap.data,
                    li: const ["Edit", "Delist"],
                    func: (String? value) {
                      _string.stringsink.add(value);
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
