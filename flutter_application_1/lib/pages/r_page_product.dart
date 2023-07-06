//r2_page_category.dart
import 'package:flutter/material.dart';

class PageProduct extends StatefulWidget {
  final overview; ////6
  final poster_path;
  final original_title;
  const PageProduct(
      {super.key,
      this.overview = "pageProduct",
      this.poster_path = "pageProduct",
      this.original_title = "pageProduct"});

  ///6

  @override
  State<PageProduct> createState() => _PageProductState();
}

class _PageProductState extends State<PageProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 126, 245, 130),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 10,
                child: InkWell(
                  ////3
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.overview.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        widget.original_title.toString(),
                      ),
                      ListView.separated(
                        ////1
                        itemCount: 1, ////7
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return const SizedBox();
                        },
                        itemBuilder: (context, index) {
                          return AspectRatio(
                            aspectRatio: 1, ////kích thức
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        widget.poster_path.toString()),
                                    fit: BoxFit.cover),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                        onTap: (() {
                                          Navigator.pop(context);
                                        }),
                                        child: const Icon(
                                          Icons.arrow_back,
                                          size: 30,
                                          color: Colors.pink,
                                        )),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "data",
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.amber,
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "datadfgbrs dth brt h bty hn ty hn ty dh rt ",
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    color: Colors.amber,
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "datadfgbrs dth brt h bty hn ty hn ty dh rt ",
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  color: Colors.amber,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              //  Positioned(child: Text('dadadda'))
                            ),
                          );
                        },
                      ),
                      Text(widget.original_title.toString()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
