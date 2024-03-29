import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/category_provider.dart';
import 'package:provider/provider.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({Key? key}) : super(key: key);

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  late Future categoryFuture;

  @override
  void didChangeDependencies() {
    categoryFuture = Provider.of<CategoryProvider>(context).getCategory();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: categoryFuture,
      initialData: [],
      builder: (context, asyncData) {
        var categoryData = [];
        if (asyncData.hasData) {
          categoryData = asyncData.data! as List;
        } else {
          return Container(
            child: Text(asyncData.error.toString()),
          );
        }

        return SizedBox(
          height: 70,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            itemCount: categoryData.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                width: 25,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context, rootNavigator: true).pushNamed(
                    "/CategoryPage.routerName",
                    arguments: {
                      'id': categoryData[index].id,
                      'name': categoryData[index].name,
                    },
                  );
                },
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                        boxShadow: [],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black26,
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: NetworkImage(categoryData[index].image),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(categoryData[index].name),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
