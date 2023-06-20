import 'package:flutter/material.dart';
import 'package:flutter_application_1/ddddddddddd/provider_category.dart';

class SingleChildS extends StatefulWidget {
  const SingleChildS({
    super.key,
  });

  @override
  State<SingleChildS> createState() => _SingleChildSState();
}

class _SingleChildSState extends State<SingleChildS> {
  late Future readData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData = ProviderCategory().readJson();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: readData,
      //initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        print(snapshot);
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } ////5

        var categoryItem = snapshot.hasData ? snapshot.data : []; ////5
        return snapshot.hasData
            ? SafeArea(
                child: Padding(
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
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          categoryItem[index].image,
                                        ),
                                        fit: BoxFit.cover),
                                  ),
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
                ),
              )
            : Center(
                child: Text(
                'Not Data',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                ),
              ));
      },
    );
  }
}
