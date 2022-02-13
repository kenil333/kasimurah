import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './../../../domain/all.dart';

class CustSelectionwid extends StatefulWidget {
  final Size size;
  final String title;
  const CustSelectionwid({Key? key, required this.size, required this.title})
      : super(key: key);

  @override
  _CustSelectionwidState createState() => _CustSelectionwidState();
}

class _CustSelectionwidState extends State<CustSelectionwid> {
  final _select = BoolStream();

  @override
  void dispose() {
    _select.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: _select.boolstream,
      initialData: false,
      builder: (context, boolsnap) {
        return InkWell(
          onTap: () {
            _select.boolsink.add(!boolsnap.data!);
          },
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: widget.size.width * 0.04,
            ),
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: boolsnap.data! ? txtcol : gry,
              ),
            ),
            child: Row(
              children: [
                const SizedBox(width: 15),
                SvgPicture.asset(
                  checkedsvg,
                  height: 25,
                  color: boolsnap.data! ? txtcol : gry,
                ),
                const SizedBox(width: 15),
                Text(
                  widget.title,
                  style: TextStyle(
                    fontWeight:
                        boolsnap.data! ? FontWeight.bold : FontWeight.w600,
                    fontSize: widget.size.width * 0.04,
                    color: boolsnap.data! ? txtcol : gry,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
