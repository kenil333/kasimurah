import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../domain/all.dart';

class CustomSvfbtn extends StatelessWidget {
  final String svgpath;
  final Function callback;
  const CustomSvfbtn({
    Key? key,
    required this.svgpath,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        callback();
      },
      child: SvgPicture.asset(
        svgpath,
        height: 18,
        fit: BoxFit.contain,
        color: txtcol,
      ),
    );
  }
}
