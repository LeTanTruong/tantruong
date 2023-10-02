import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Lists/list_product_special.dart';
import 'package:flutter_application_1/pages/homes/home_page.dart';
import 'package:flutter_application_1/pages/walks/walk_home_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  static const routerName = "/BottomNavigationBarScreen.routerName";
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  late PersistentTabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    ////2
    return [
      const HomePage(),
      const WalkHomePage(),
      ListProductSpecial(),
    ];
  } ////2

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Trang Chủ"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: const Color.fromARGB(255, 0, 0, 0),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.flag, size: 30),
        title: ("Walk"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: const Color.fromARGB(255, 0, 0, 0),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.calendar_today),
        title: ("ListProductSpecial"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: const Color.fromARGB(255, 0, 0, 0),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      navBarStyle: NavBarStyle.style8,
    );
  }
}
