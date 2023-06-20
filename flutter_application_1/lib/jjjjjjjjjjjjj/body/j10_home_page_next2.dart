import 'package:flutter/material.dart';
import 'package:flutter_application_1/jjjjjjjjjjjjj/provider/12_provider_category2_read.dart';

class HomePageNext2 extends StatefulWidget {
  static const routerName = '/HomePageNext2.routerName';
  const HomePageNext2({
    super.key,
  });

  @override
  State<HomePageNext2> createState() => _HomePageNext2State();
}

class _HomePageNext2State extends State<HomePageNext2> {
  late Future readData; ////5
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData = ProviderCategory2().readJson();
  }

  bool checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 173, 173),
        title: const Text(
          'data',
          style: TextStyle(fontSize: 20, color: Colors.orange),
        ),
      ),
      ////appbar
      body: SafeArea(
        child: FutureBuilder(
          future: readData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            var category2Item = snapshot.hasData ? snapshot.data : [];
            return snapshot.hasData
                ? SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GridView(
                        //cuộn thẳng đứng GridView
                        //shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                          childAspectRatio: 1.2 / 0.5,
                        ),
                        children: List.generate(
                          //  categoryItem.length,
                          category2Item.length,
                          (index) => Container(
                            alignment: Alignment.center,
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  //'assets/images/mau2.jpg'
                                  category2Item[index].image, ////8
                                ),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  20,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        //'ddddddddddvf d fvb ftb r fv d br tfbs',
                                        category2Item[index]
                                            .name
                                            .toString(), ////8
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: StatefulBuilder(
                                      builder: (context, setState2) {
                                        return Checkbox(
                                          fillColor:
                                              const MaterialStatePropertyAll(
                                                  Color.fromARGB(
                                                      255, 255, 70, 70)),
                                          shape: const CircleBorder(),
                                          value: checkbox,
                                          onChanged: (value) {
                                            setState2(() {
                                              checkbox = !checkbox;
                                            });
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : const Center(
                    ////7
                    child: Text(
                      'Not 3',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 240, 73, 73)),
                    ),
                  );
          },
        ),
      ),
    );
  }
}
