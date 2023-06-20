import 'package:flutter/material.dart';

import 'home_category_2.dart';

class HomePage extends StatefulWidget {
  static const routerName = '/';
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: Container(
              // width: 100,
              // height: 100,
              //  alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: const Icon(Icons.search),
            ),
          ),
          // const SizedBox(
          //   width: 20,
          //   height: 20,
          // ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 20,
          ),
          child: Container(
            //  width: 100, height: 100,
            //alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: const Icon(Icons.menu),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeCategory(
                title: 'Thể Thao',
                //  description: '',
              ),
              HomeCategory(
                title: 'Thời sự',
                //  description: '',
              ),
              ////
            ],
          ),
        ),
      ),
    );
  }
}
