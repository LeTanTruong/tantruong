import 'package:flutter/material.dart';
import 'package:flutter_application_1/a0_next_page/gridview/gridview_provider_a5.dart';
import 'package:provider/provider.dart';

class HomeBodyGirdviewA3 extends StatefulWidget {
  const HomeBodyGirdviewA3({super.key});

  @override
  State<HomeBodyGirdviewA3> createState() => _HomeBodyA3State();
}

class _HomeBodyA3State extends State<HomeBodyGirdviewA3> {
  late Future girdviewFuture; ////5

  @override
  void didChangeDependencies() {
    girdviewFuture = Provider.of<GridviewProvider>(context).getGirdview();
    super.didChangeDependencies();
  }

  ////5
  bool checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 31, 179, 216),
      ),
      body: SafeArea(
        ////1 GridView
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: FutureBuilder(
            future: girdviewFuture,
            initialData: [],
            builder: (context, asyncData) {
              final girdviewData = asyncData.data! as List;
              return asyncData.hasData
                  ? GridView(
                      ////2 GridView
                      //cuộn thẳng đứng GridView
                      //shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        childAspectRatio: 1.2 / 0.5,
                      ),
                      children: List.generate(
                        girdviewData.length,
                        (index) => Container(
                          alignment: Alignment.center,
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(girdviewData[index]
                                  .image), //'assets/images/mau7.jpg'
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                20,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    girdviewData[index].image,
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.white,
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                ),
                                StatefulBuilder(
                                  builder: (context, setState2) {
                                    return Checkbox(
                                      fillColor: MaterialStatePropertyAll(
                                          Color.fromARGB(255, 248, 208, 27)),
                                      shape: CircleBorder(),
                                      value: checkbox,
                                      onChanged: (value) {
                                        setState2(() {
                                          checkbox = !checkbox;
                                        });
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  : Center(
                      child: Text('not data'),
                    );
            },
          ),
        ),
      ),
    );
  }
}
