import 'package:flutter/material.dart';

import 'home_boby_a2.dart';

class HomeBodyA1 extends StatelessWidget {
  const HomeBodyA1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Positioned(
                    top: -10,
                    left: -10,
                    child: InkWell(
                      onTap: (() {
                        Navigator.pop(context);
                      }),
                      child: Icon(
                        Icons.arrow_left,
                        size: 100,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Column(
                        children: [
                          InkWell(
                            //2 cách 2
                            onTap: () {
                              Navigator.push(
                                context,
                                //push là chuyển trang sang 1 trang mình muốn chọn
                                MaterialPageRoute(
                                  builder: ((_) => const HomeBodyA2()),
                                  //muốn chuyển sang Mot5Category()
                                ),
                              );
                            },
                            child: Text(
                              'hnh',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.brown),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
