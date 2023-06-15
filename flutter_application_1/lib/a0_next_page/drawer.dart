import 'package:flutter/material.dart';

import 'drawer_items.dart';

class drawer extends StatelessWidget {
  const drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<DataItems> items = [
      DataItems(id: '1', name: 'Trang Chủ'),
      DataItems(id: '2', name: 'Danh Mục'),
      DataItems(id: '3', name: 'Yêu Thích'),
      DataItems(id: '4', name: 'Đã Xem'),
    ];
    return Drawer(
      ////1 Drawer
      child: containerdrawer(),
    );
  }
}

class containerdrawer extends StatelessWidget {
  const containerdrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/images1.jpg',
            ),
            fit: BoxFit.fill),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/img11.jpg',
                    ),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              'App Tin Tức',
              style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 255, 255, 255),
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.bold),
            ),
          ),
          //
          // SizedBox(height: 20),
          //
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trang Chủ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
