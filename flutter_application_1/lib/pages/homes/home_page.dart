import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/homes/home_category.dart';
import 'package:flutter_application_1/Pages/homes/home_slider.dart';
import 'package:flutter_application_1/pages/homes/widgets_drawer/drawer_screen.dart';

class HomePage extends StatefulWidget {
  static const routerName = "/HomePage.routerName";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: true,
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: const Text(
            "HomePage",
            style: TextStyle(fontSize: 30),
          ),
        ),
        drawer: const DrawerScreen(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true)
                        .pushReplacementNamed("/SearchHome.routerName");
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 82, 81, 81)),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_back,
                                color: Color.fromARGB(255, 82, 81, 81),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "search",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 82, 81, 81)),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.clear,
                            color: Color.fromARGB(255, 82, 81, 81),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const HomeSlider(),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Text("Danh mục sản phẩm")),
                      Text("Tất cả 4"),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const HomeCategory(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
