import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/aaaaaaaaaa/pages/a1_page_next1.dart';
import 'package:flutter_application_1/aaaaaaaaaa/pages/a2_page_next2.dart';
import 'package:flutter_application_1/aaaaaaaaaa/pages/a3_page_next3.dart';
import 'package:flutter_application_1/aaaaaaaaaa/provider/a4_category_provider_next2.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CategoryProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late PersistentTabController _controller; ////1

  @override ////1
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  } ////1

  List<Widget> _buildScreens() {
    ////1
    return [
      const PageNext1(),
      const PageNext2(),
      const PageNext3(),
    ];
  } ////1

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("PageNext1"),
        activeColorPrimary: const Color.fromARGB(255, 43, 255, 0),
        inactiveColorPrimary: const Color.fromARGB(255, 255, 255, 255),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.settings, size: 30),
        title: ("PageNext2"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: const Color.fromARGB(255, 255, 255, 255),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.calendar_today),
        title: ("PageNext3"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: const Color.fromARGB(255, 255, 255, 255),
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
      //confineInSafeArea: true,
      backgroundColor: Color.fromARGB(255, 17, 255, 223),
      //handleAndroidBackButtonPress: true, // Default is true.
      //resizeToAvoidBottomInset: true,
      //stateManagement: true,
      //hideNavigationBarWhenKeyboardShows: true,
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      //popAllScreensOnTapOfSelectedTab: true,
      //popActionScreens: PopActionScreensType.all,
      // itemAnimationProperties: const ItemAnimationProperties(
      //   // Navigation Bar's items animation properties.
      //   duration: Duration(milliseconds: 0),
      //   curve: Curves.ease,
      // ),
      // screenTransitionAnimation: const ScreenTransitionAnimation(
      //   // Screen transition animation on change of selected tab.
      //   animateTabTransition: true,

      //   ///hiệu ứng chuyển dổi tab
      //   curve: Curves.ease,
      //   duration: Duration(milliseconds: 0),
      // ),
      navBarStyle: NavBarStyle.style8,
      //thay đổi hình dạng nút nhấn bottonnarvigator thay style8 thành nhiều kiểu như style1,2,3,.....
    );
  }
}
