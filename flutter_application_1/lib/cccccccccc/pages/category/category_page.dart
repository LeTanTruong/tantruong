import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  // Duration duration = Duration();
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   startTimer();
  // }
  // void addTime(){
  //   final addSeconds =1;
  //   setState(() {
  //     final seconds =duration.inSeconds + addSeconds;
  //     duration = Duration(seconds: seconds);
  //   });
  // }
  // void startTimer(){
  //  timer = Timer.periodic(Duration(seconds: 1) {_} => addTime());
  // }

// late StreamController _StreamController;
// @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _StreamController = StreamController<int>();
//   }

// @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _StreamController.close();
//     }

  @override
  Widget build(BuildContext context) {
    //_StreamController.stream.listem((event){
    //  print(event);
    //})
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (() {}), child: Text('+')),
          ],
        ),
      ),
    );
  }
}
