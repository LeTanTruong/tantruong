import 'package:flutter/material.dart';
import 'package:flutter_application_1/fu1111111111/home/f9_home_product3_page.dart';
import 'package:flutter_application_1/fu1111111111/product/f8_product2_json.dart';

import 'package:flutter_application_1/fu1111111111/provider/f7_product2_provider.dart';

class HomeProduct2 extends StatefulWidget {
  static const routeName = '/homeProduct2.routerName';
  const HomeProduct2({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeProduct2> createState() => _HomeProduct2State();
}

class _HomeProduct2State extends State<HomeProduct2> {
  late Future getDataFuture;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies

    super.didChangeDependencies();
    getDataFuture = ProviderProduct2().getAll();
    //getDataFuture = context.read<ProviderProduct2>().getAll();
  }

  @override
  Widget build(BuildContext context) {
    //  var datat =Provider.of<Product2>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.amber,
        title: Text(
          'Khoa học',
          style: TextStyle(fontSize: 30, color: Colors.orange),
        ),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
            future: getDataFuture,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Product2> data = snapshot.data as List<Product2>;
                return ListView.separated(
                  itemCount: data.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 10);
                  },
                  itemBuilder: (context, index) {
                    return AspectRatio(
                      aspectRatio: 3, ////kích thức
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, HomeProduct3.RouterName,
                              arguments: {
                                'id': data[index].id,
                                "title": data[index].title,
                                "description": data[index].description,
                              });
                        },

//////////////////////////////////
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/img5.jpg'), ////widget.link
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      data[index].title,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 229, 243, 33),
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      data[index].description,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Mar.5.2023',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.blue,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.thumb_up,
                                              size: 20,
                                              color: Colors.pink,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              'like',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.blue,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(width: 5),
                                            Icon(
                                              Icons.visibility,
                                              size: 20,
                                              color: Colors.pink,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              'see',
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.blue,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                      ],
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
