//pagessssssssss\h5_page2_part1.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/hhhhhhhhhh/provider/h4_providervv_page1_part1.dart';
import 'package:provider/provider.dart';

class Page2Part1 extends StatefulWidget {
  final overview;
  const Page2Part1({super.key, this.overview = "page2Page1"});

  @override
  State<Page2Part1> createState() => _Page2Part1State();
}

class _Page2Part1State extends State<Page2Part1> {
  late Future datafuture; ////5

  @override
  void didChangeDependencies() {
    final Map<String, dynamic> arg =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    //final args = settings.arguments as Map;
    datafuture = Provider.of<ProvidervvPage1Part1>(context).getAll21(arg['id']);
    super.didChangeDependencies();
  }

  // const Page2Part1({
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
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.overview.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                        ),
                        //  maxLines: 1,
                      ),
                      FutureBuilder(
                        future: datafuture,
                        builder: (context, snapshot) {
                          List data = [];
                          if (snapshot.hasData) {
                            data = snapshot.data as List;
                            return ListView.separated(
                              ////1
                              itemCount: data.length, ////7
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              separatorBuilder: (context, index) {
                                return const SizedBox();
                              },
                              itemBuilder: (context, index) {
                                return AspectRatio(
                                  aspectRatio: 1, ////kích thức
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/img5.jpg'), ////widget.link
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Text('data1'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          } else {
                            return Container(
                              child: Text('No  data'),
                            );
                          }
                        },
                      ),
                      Text('data'),
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
