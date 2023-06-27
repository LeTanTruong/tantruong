//home\home_category_2.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/fu1111111111/models/item_model.dart';
import 'package:flutter_application_1/fu1111111111/repositorires/item_repository_5.dart';
import 'package:provider/provider.dart';
import '../widget/item_widget.dart';

class HomeCategory extends StatefulWidget {
  ////6 FutureBuilder API
  String title;

  HomeCategory({
    super.key,
    required this.title,
  });

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  ////7 FutureBuilder API

  late Future getDataFuture;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    getDataFuture = context.read<ItemRepository>().getAll();
  }

  ////7 FutureBuilder API ////7
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(fontSize: 20, color: Colors.amber),
              ),
              const Text(
                'view All',
                style: TextStyle(fontSize: 20, color: Colors.amber),
              ),
              const SizedBox(height: 20),
            ],
          ),
          FutureBuilder(
              ////5 FutureBuilder API
              future: getDataFuture,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<ItemModel> data = snapshot.data as List<ItemModel>;
                  return ListView.separated(
                    itemCount: data.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 10);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return
                          ////
                          ItemWidget(
                        title: data[index].title,
                        description: data[index].description,
                        link: data[index].link,
                      );
                    },
                  );
                } else {
                  return Center();
                }

                ////9 FutureBuilder
              }),

          ////
        ],
      ),
    );
  }
}
