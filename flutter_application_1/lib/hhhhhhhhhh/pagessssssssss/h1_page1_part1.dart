//pagessssssssss\h1_page1_part1.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/hhhhhhhhhh/items/h2_items_page1_part1.dart';
import 'package:flutter_application_1/hhhhhhhhhh/h6_routers.dart';
import 'package:flutter_application_1/hhhhhhhhhh/provider/h4_providervv_page1_part1.dart';
import 'package:provider/provider.dart';

class Page1Part1 extends StatefulWidget {
  ////4
  const Page1Part1({
    Key? key,
  }) : super(key: key);

  @override
  State<Page1Part1> createState() => _Page1Part1State();
}

class _Page1Part1State extends State<Page1Part1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.amber,
        title: Text(
          'data',
          style: TextStyle(fontSize: 30, color: Colors.orange),
        ),
      ),
      body: SafeArea(
        child: FutureBuilder(
            future: context.read<ProvidervvPage1Part1>().getAll(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Items> data = snapshot.data as List<Items>;
                return ListView.separated(
                  itemCount: data.length,
                  //shrinkWrap: true,
                  //  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10);
                  },
                  itemBuilder: (context, index) {
                    return AspectRatio(
                      aspectRatio: 3,
                      child: InkWell(
                        onTap: (() {
                          Navigator.pushNamed(context, RouterName.page2Part1,
                              arguments: {
                                'id': data[index].id,
                                "overview": data[index].overview,
                              });
                        }),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w500${data[index].poster_path}',
                                      ), //'assets/images/img5.jpg'
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                //  color: Colors.amber,
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data[index].overview,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 229, 243, 33),
                                      ),
                                      maxLines: 1,
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
                );
              } else {
                return Center();
              }
              ///////listView.separated
            }),
      ),
    );
  }
}
