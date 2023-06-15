import 'package:flutter/material.dart';

import 'home_body_girdview_a3.dart';

class HomeBodyA2 extends StatelessWidget {
  const HomeBodyA2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'dfbfgn     ddd    ghnh',
          style: TextStyle(fontSize: 30, color: Colors.brown),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  //push là chuyển trang sang 1 trang mình muốn chọn
                  MaterialPageRoute(
                    builder: ((_) => const HomeBodyGirdviewA3()),
                    //muốn chuyển sang Mot5Category()
                  ),
                );
              },
              child: Text(
                'a2',
                style: TextStyle(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 255, 81, 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
