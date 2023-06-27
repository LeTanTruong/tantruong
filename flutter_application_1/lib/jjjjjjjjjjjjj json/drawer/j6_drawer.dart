import 'package:flutter/material.dart';

class ContainerDrawer extends StatelessWidget {
  const ContainerDrawer({
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
            padding: EdgeInsets.all(20.0),
            child: Column(
              //  mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trang Chủ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(height: 10),
                Text(
                  'Danh Mục',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(height: 10),
                Text(
                  'Yêu Thích',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(height: 10),
                Text(
                  'Đã Xem',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
