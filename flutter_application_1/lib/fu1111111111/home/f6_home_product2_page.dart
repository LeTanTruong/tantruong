import 'package:flutter/material.dart';
import 'package:flutter_application_1/fu1111111111/models/f9_item_au.dart';

import 'package:flutter_application_1/fu1111111111/provider/f7_product2_provider.dart';
import 'package:provider/provider.dart';

class HomeProduct2 extends StatefulWidget {
  static const routerName = '/HomeProduct2.routerName';

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
    //getDataFuture = ProviderProduct2().getAll();
    getDataFuture = context.read<ProviderProduct2>().getAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.amber,
        title: Text(
          'data',
          style: TextStyle(fontSize: 30, color: Colors.orange),
        ),
      ),
      body: FutureBuilder(
          ////5 FutureBuilder API
          future: getDataFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProviderProduct2> data =
                  snapshot.data as List<ProviderProduct2>;

              return ListView.separated(
                itemCount: data.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 10);
                },
                itemBuilder: (BuildContext context, int index) {
                  return ItemAu(
                    title: data[index].title,
                    description: data[index].description,
                    link: data[index].link,
                  );
                },
              );
            } else {
              return Container(
                  // child: Text(
                  //   'no data',
                  //   style: TextStyle(fontSize: 20, color: Colors.amber),
                  // ),
                  );
            }

            ////9 FutureBuilder
          }),
    );
  }
}
