import 'package:flutter/material.dart';
import 'package:flutter_application_1/jjjjjjjjjjjjj%20json/body/j10_home_page_next2.dart';
import 'package:flutter_application_1/jjjjjjjjjjjjj%20json/provider/j9_provider_product_read.dart';

class HomePageNext1 extends StatefulWidget {
  /////////////////////////////////////////////////////////////////////////////////////////////////
  static const routerName = '/HomePageNext1.routerName';
  ///////////////////////////////////////////////////////////////////////////////////////////////////
  const HomePageNext1({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePageNext1> createState() => _HomePageNext1State();
}

class _HomePageNext1State extends State<HomePageNext1> {
  late Future readData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData = ProviderProduct().readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text(
          'Thể Thao',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///////////////////////////////////////////////////////////////////////////
              FutureBuilder(
                future: readData,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  var productItem = snapshot.hasData ? snapshot.data : [];
                  return snapshot.hasData
                      ? ListView.separated(
                          ////1
                          itemCount: productItem.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 10);
                          },
                          itemBuilder: (context, index) {
                            return AspectRatio(
                              aspectRatio: 3,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      HomePageNext2
                                          .routerName, ////11127 chuyển trang
                                      //arguments: {'title: index'}
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          //  color: Colors.amber,
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                productItem[index]
                                                    .title
                                                    .toString(),
                                                //'dd',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 229, 243, 33),
                                                ),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                productItem[index]
                                                    .description
                                                    .toString(),

                                                //'dddd',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                ),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                'Mar.5.2023',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.blue,
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
                              ),
                            );
                          },
                        )
                      : Center(
                          child: Text(
                            'notData2',
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
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
