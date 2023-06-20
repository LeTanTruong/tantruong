import 'package:flutter/material.dart';
import 'package:flutter_application_1/eeeeeeeeeeeee/c4_provider_category.dart';

class Body_safeArea extends StatefulWidget {
  const Body_safeArea({
    super.key,
  });

  @override
  State<Body_safeArea> createState() => _Body_safeAreaState();
}

class _Body_safeAreaState extends State<Body_safeArea> {
  late Future readData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData = ProviderCategory().readJson();
  }

  @override
  Widget build(BuildContext context) {
    // print('body');
    //
    return FutureBuilder(
        future: readData,
        ////5

        builder: (BuildContext context, AsyncSnapshot snapshot) {
          print(snapshot);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } ////5
          var categoryItem = snapshot.hasData ? snapshot.data : []; ////5
          //
          return snapshot.hasData
              ? ////6
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView.separated(
                    ////1
                    itemCount: categoryItem.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),

                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 10);
                    },
                    itemBuilder: (context, index) {
                      return AspectRatio(
                        aspectRatio: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: const Color.fromARGB(255, 11, 7, 255),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  color: Colors.amber,
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        //title:
                                        categoryItem[index].title.toString(),
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 229, 243, 33),
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        categoryItem[index].intro.toString(),
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const Text(
                                        'Mar.5.2023',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.blue,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              : const Center(
                  ////7
                  child: Text(
                    'Not Datat',
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 240, 73, 73)),
                  ),
                );
        });
  }
}
