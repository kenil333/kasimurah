import 'package:flutter/material.dart';

import './../../../domain/all.dart';

class CustLoading extends StatelessWidget {
  const CustLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: CircularProgressIndicator(color: prim),
    );
  }
}
