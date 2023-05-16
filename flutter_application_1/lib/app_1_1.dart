import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 245, 244, 244),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: Color.fromARGB(255, 160, 160, 158),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              children: [
                Text(
                  'David Grant',
                  style: TextStyle(fontSize: 30.0),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  '...vdfsvdfsv dfv fd vdf b gfd b gfb gfb fg by n5ey hb 5th r br brs edbej nibuygubjb j uy vuyv hjbjkbjh gvuvjh ',
                  style: TextStyle(fontSize: 30.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
