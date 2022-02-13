import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import './../../../domain/all.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 2);
    List<Widget> _screensofbar = [
      const HomePage(),
      const OrderPage(),
      const OfferPage(),
      const ChatsPage(),
      const AccountPage(),
    ];

    List<PersistentBottomNavBarItem> _navbaritems() {
      return [
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            homesvg,
            height: 25,
            fit: BoxFit.contain,
            color: txtcol,
          ),
          title: (homestr),
          activeColorPrimary: prim,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            ordersvg,
            height: 25,
            fit: BoxFit.contain,
            color: txtcol,
          ),
          title: (orderstr),
          activeColorPrimary: prim,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            offersvg,
            height: 25,
            fit: BoxFit.contain,
            color: txtcol,
          ),
          title: (offerstr),
          activeColorPrimary: prim,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            chatsvg,
            height: 25,
            fit: BoxFit.contain,
            color: txtcol,
          ),
          title: (chatstr),
          activeColorPrimary: prim,
        ),
        PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            accountsvg,
            height: 25,
            fit: BoxFit.contain,
            color: txtcol,
          ),
          title: (accountstr),
          activeColorPrimary: prim,
        ),
      ];
    }

    return Scaffold(
      backgroundColor: screenback,
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: screenback,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          elevation: 0,
        ),
        preferredSize: const Size.fromHeight(0),
      ),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _screensofbar,
        items: _navbaritems(),
        confineInSafeArea: true,
        backgroundColor: whit,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: const NavBarDecoration(
          colorBehindNavBar: whit,
          boxShadow: [
            BoxShadow(
              color: txtcol,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 1.0),
            ),
          ],
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style12,
      ),
    );
  }
}
