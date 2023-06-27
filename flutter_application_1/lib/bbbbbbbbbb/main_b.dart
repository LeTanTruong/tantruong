import 'package:flutter/material.dart';
import 'package:flutter_application_1/bbbbbbbbbb/b1__page_next1_category.dart';
import 'package:flutter_application_1/bbbbbbbbbb/b2_favorite_provider_next1.dart';
import 'package:flutter_application_1/bbbbbbbbbb/b3_category_json_next1.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoriteProviderNext1()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future readData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData = FavoriteProviderNext1().readJson();
  }

  @override
  Widget build(BuildContext context) {
    final items = Provider.of<FavoriteProviderNext1>(context).items;
    //  final words = nouns.take(50).toList();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((_) => const PageNextCategory()),
                    ),
                  );
                },
                child: Text(
                  'data',
                  style: TextStyle(fontSize: 30, color: Colors.amber),
                ),
              ),
              FutureBuilder(
                future: readData,
                builder: (context, snapshot) {
                  //  final item = items[index];
                  print(snapshot);
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } ////5
                  var categoryItem = snapshot.hasData ? snapshot.data : [];

                  return snapshot.hasData
                      ? ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: categoryItem.length,
                          itemBuilder: (context, index) {
                            return ChangeNotifierProvider.value(
                              value: items[index],
                              child: Container(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        categoryItem[index].name,
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child:
                                          //    IconButton(
                                          //   onPressed: (() {

                                          //     provider.toogleFavorite(item); ////7
                                          //    // item.toogleFavorite();
                                          //   }),
                                          //   icon: provider.isExist(item)
                                          //       ? Icon(
                                          //           Icons.favorite,
                                          //           color: Colors.red,
                                          //         )
                                          //       : Icon(Icons.favorite_border), ////7
                                          // ),

                                          Consumer<Category>(
                                        builder: (context, item, child) {
                                          return InkWell(
                                            onTap: () {
                                              item.toogleIsFavorite();
                                            },
                                            child: Icon(
                                              Icons.favorite,
                                              size: 30,
                                              color: item.isFavorite
                                                  ? Colors.red
                                                  : Colors.white,
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      : Center(
                          child: Text('not data'),
                        );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
