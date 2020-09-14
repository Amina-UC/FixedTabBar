import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:staticbottomtabbar/account.dart';
import 'package:staticbottomtabbar/chat.dart';
import 'package:staticbottomtabbar/home.dart';

import 'cus_widget.dart';

class MainPage extends StatefulWidget {
  final BuildContext menuScreenContext;
  MainPage({Key key, this.menuScreenContext}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      Home(
        menuScreenContext: widget.menuScreenContext,

      ),
      Chat(
        menuScreenContext: widget.menuScreenContext,

      ),
      Account(
        menuScreenContext: widget.menuScreenContext,

      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: "Home",
        activeColor: Colors.red,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.chat_bubble_outline),
        title: ("Chat"),
        activeColor: Colors.red,
        inactiveColor: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person_outline),
        title: ("Account"),
        activeColor: Colors.red,
        inactiveColor: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
          colorBehindNavBar: Colors.indigo,
          borderRadius: BorderRadius.circular(20.0)),
      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      customWidget: CustomNavBarWidget(
        items: _navBarsItems(),
        onItemSelected: (index) {
          setState(() {
            _controller.index = index; // THIS IS CRITICAL!! Don't miss it!
          });
        },
        selectedIndex: _controller.index,
      ),
      navBarStyle:
      NavBarStyle.custom, // Choose the nav bar style with this property
    );
  }
}

