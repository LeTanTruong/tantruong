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
      appBar: AppBar(
        centerTitle: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Zendvn',
              style: TextStyle(color: Colors.blue),
            ),
            Text(
              'Study Flutter',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              //padding: const EdgeInsets.all(20.0),
              width: double.infinity,
              height: 180,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20.0),
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 252, 250, 250),
                      Color.fromARGB(255, 160, 229, 241)
                    ],
                    begin: Alignment.topCenter, //topLift trên trái
                    end: Alignment.bottomCenter, //bottomRight dưới phải
                  ),
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, //mainAxisAlignment giãn cách 2 bên ngang Row
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'More...',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 180,
              child: ListView.separated(
                //padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 125,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 252, 250, 250),
                          Color.fromARGB(255, 143, 217, 230)
                        ],
                        begin: Alignment.topCenter, //topLift trên trái
                        end: Alignment.bottomCenter, //bottomRight dưới phải
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemCount: 10,
              ),
            ),
            ////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////
            const Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, //mainAxisAlignment giãn cách 2 bên ngang Row
              children: [
                Text(
                  'News',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'More...',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 180,
              child: ListView.separated(
                //padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 125,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 252, 250, 250),
                          Color.fromARGB(255, 143, 217, 230)
                        ],
                        begin: Alignment.topCenter, //topLift trên trái
                        end: Alignment.bottomCenter, //bottomRight dưới phải
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
