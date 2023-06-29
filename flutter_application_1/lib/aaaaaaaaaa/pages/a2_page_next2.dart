//lib\aaaaaaaaaa\a2_page_next2.dart
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/aaaaaaaaaa/provider/a4_category_provider_next2.dart';

import 'package:provider/provider.dart';

class PageNext2 extends StatefulWidget {
  const PageNext2({super.key});

  @override
  State<PageNext2> createState() => _PageNext2State();
}

class _PageNext2State extends State<PageNext2> {
  //late StreamController _streamController;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _streamController = StreamController<int>();
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   _streamController.close();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'data',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
              stream: context.read<CategoryProvider>().countStream,
              builder: (context, snapshot) {
                return Text(
                  snapshot.data.toString(),
                  style: TextStyle(fontSize: 50),
                );
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (() {
                      context.read<CategoryProvider>().add();
                    }),
                    child: Text('play')),
                ElevatedButton(
                    onPressed: (() {
                      context.read<CategoryProvider>().stoptimer();
                    }),
                    child: Text('pause')),
                // ElevatedButton(
                //     onPressed: (() {
                //       context.read<CategoryProvider>().backtotheoriginal();
                //     }),
                //     child: Text('initial')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
