import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/homes/home_category.dart';
import 'package:flutter_application_1/Pages/homes/home_slider.dart';
import 'package:flutter_application_1/Pages/homes/searchs/search_home.dart';
import 'package:flutter_application_1/widgets/drawer_screen.dart';

/////////////////////////////////////////////
class HomePage extends StatefulWidget {
  static const routerName = "/HomePage.routerName";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text("HomePage"),
      ),
      drawer: const DrawerScreen(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  //Navigator.of(context).pushNamed("/SearchHome.routerName");
                  Navigator.of(context, rootNavigator: true)
                      .pushReplacementNamed("/SearchHome.routerName");
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  child: Image.asset(
                    "assets/images/sea.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              HomeSlider(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Text("Danh mục sản phẩm")),
                    Text("Tất cả (4)"),
                  ],
                ),
              ),
              SizedBox(height: 10),
              HomeCategory(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
