import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './../../../domain/all.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextEditingController _message = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: screenback,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          elevation: 0,
        ),
        preferredSize: const Size.fromHeight(0),
      ),
      body: Column(
        children: [
          AppbarMessage(
            size: size,
            backfunc: () {
              Navigator.of(context).pop();
            },
          ),
          Expanded(
            child: ListView.builder(
              reverse: true,
              padding: EdgeInsets.zero,
              itemCount: 4,
              itemBuilder: (context, i) => MessageStemp(
                size: size,
                byme: (i == 0 || i == 2) ? true : false,
              ),
            ),
          ),
          MesSentWid(size: size, controll: _message),
          SizedBox(height: size.height * 0.01),
        ],
      ),
    );
  }
}
