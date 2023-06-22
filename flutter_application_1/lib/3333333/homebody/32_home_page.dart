//3333333\pages\32_home_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/3333333/pages/category135muahang/33_category_page.dart';
import 'package:flutter_application_1/3333333/pages/category246danhsach/35_category_page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: unused_field
  int _selectedIndex = 0; ////1113 bottomNavigationBar duong
  // ignore: unused_field
  static const TextStyle optionStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold); ////1113 bottomNavigationBar dương

  // ignore: unused_field
  static List<Widget> _widgetOptions = <Widget>[
    CategoryPage2(),

    ///danh sách
    CategoryPage(),
    //mua hàng
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'danh sách',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
              size: 30,
            ),
            label: 'mua hàng',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.blue,
        onTap: _onItemTapped,
        //onTap nút nhấn
      ),
      body: (_widgetOptions[_selectedIndex]),
    );
  }
}
