//b6_app4_home_category.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'b9_app4_category.dart';
import 'b8_app4_category_provider.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({Key? key}) : super(key: key);

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  late Future categoryFuture; ////11120 categoryFuture

  @override ////11120 didChangeDependencies
  void didChangeDependencies() {
    categoryFuture = Provider.of<CategoryProvider>(context).getCategory();
    super.didChangeDependencies();
  } ////11120 didChangeDependencies

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      ////11121 FutureBuilder
      future: categoryFuture,
      initialData: [],
      builder: (context, asyncData) {
        ////11121 FutureBuilder
        var categoryData = []; ////11123 if else
        if (asyncData.hasData) {
          categoryData = asyncData.data! as List;
        } else {
          return Container(
            child: Text(asyncData.error.toString()),
          );
        } ////11123 if else

        return SizedBox(
          ////11122 SizedBox
          height: 70, //chiều cao của ListView.separated
          child: ListView.separated(
            ////11115 ListView.separated
            padding: EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            itemCount: categoryData.length,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 25, //chiều rộng của ListView.separated
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                ////11125 chuyển trang
                onTap: () {
                  Navigator.pushNamed(
                      context, CategoryPage.routerName, ////11127 chuyển trang
                      arguments: {
                        'id': categoryData[index].id,
                        'name': categoryData[index].name
                      });
                }, ////11125 chuyển trang

                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                        // boxShadow: [],
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image:
                              NetworkImage(categoryData[index].image), ////11124
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(categoryData[index].name), ////11124
                  ],
                ),
              );
            },
          ), ////11115 ListView.separated
        );
      },
    );
  }
}
