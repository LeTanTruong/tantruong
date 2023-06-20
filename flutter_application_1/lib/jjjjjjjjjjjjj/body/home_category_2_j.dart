import 'package:flutter/material.dart';
import 'package:flutter_application_1/jjjjjjjjjjjjj/body/j7_home_page_next1.dart';
import 'package:flutter_application_1/jjjjjjjjjjjjj/provider/provider_category_read_j4.dart';

class HomeCategory extends StatefulWidget {
  String title;
  String intro;
  //String description;

  HomeCategory({
    super.key,
    required this.title,
    required this.intro,
    //required this. description,
  });

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  late Future readData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData = ProviderCategory().readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                ),
              ),
              Text(
                widget.intro,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
          ////Row Text
          SizedBox(height: 10),
          FutureBuilder(
            future: readData,
            builder: (context, snapshot) {
              var categoryItem = snapshot.hasData ? snapshot.data : [];
              return snapshot.hasData
                  ? ListView.separated(
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
                            //////////////////////////////////////////////////////////////////////////////
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  HomePageNext1
                                      .routerName, ////11127 chuyển trang
                                  //arguments: {'title: index'}
                                );
                              },
                              /////////////////////////////////////////////////////////////////////////////////
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        // image: DecorationImage(
                                        //     image: AssetImage(categoryItem[index]
                                        //         .link
                                        //         .toString()),
                                        //     fit: BoxFit.fill),
                                      ),
                                    ),
                                  ),
                                  ///////////Expanded 2///////////////Expanded 2//////////////////Expanded 2///////////////////////
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
                                            categoryItem[index]
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
                                            categoryItem[index]
                                                .description
                                                .toString(),

                                            //'dddd',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
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

                        // AspectRatioHomecate(

                        //   title: categoryItem[index].title,
                        //   intro: categoryItem[index].intro,
                        // );
                      },
                    )
                  : const Center(
                      ////7
                      child: Text(
                        'Not Datat not',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 240, 73, 73)),
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }
}
