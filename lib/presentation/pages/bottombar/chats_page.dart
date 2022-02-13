import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import './../../../domain/all.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustBigtext(size: size, title: chatstr),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.add_circle,
                    color: prim,
                    size: size.width * 0.08,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: 2,
            itemBuilder: (context, i) => ChatStemp(
              size: size,
              chatopen: () {
                pushNewScreen(
                  context,
                  screen: const MessageScreen(),
                  withNavBar: false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
