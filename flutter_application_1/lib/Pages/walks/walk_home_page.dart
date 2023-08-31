//\walks\walk_home_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/walks/walk_cart_buy_product.dart';
import 'package:flutter_application_1/Pages/walks/walk_cart_model.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:provider/provider.dart';

class WalkHomePage extends StatefulWidget {
  static const routerName = "/WalkHomePage.routerName";
  const WalkHomePage({super.key});

  @override
  State<WalkHomePage> createState() => _WalkHomePageState();
}

class _WalkHomePageState extends State<WalkHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: kAppBar,
          title: const Text(
            "Walk Home Page",
            style: TextStyle(fontSize: 30),
          ),
        ), ////2
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              ////4
              child: Consumer<WalkCartModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.shopItems.length,
                    padding: const EdgeInsets.all(12),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.3,
                    ),
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: value.shopItems[index]["color"],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Image.asset(
                                  value.shopItems[index]["image"],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              ////Tên sản phẩm
                              Text(
                                value.shopItems[index]["name"],
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .pushNamed(
                                      "/WalkDetailsProductPage.routerName",
                                      arguments: value.shopItems[index],
                                    );
                                  },
                                  child: const Text("Chi tiết")),
                              ////
                              MaterialButton(
                                onPressed: () {
                                  Provider.of<WalkCartModel>(context,
                                          listen: false)
                                      .addItemToCart(index);
                                },
                                color: value.shopItems[index]["color"],
                                child: Text(
                                  "take ${value.shopItems[index]["price"]}",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
          ],
        ),
        //// floatingActionButton nổi hành động nút
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const WalkCartBuyProduct();
              },
            ),
          ),
          backgroundColor: kAppBar,
          child: const Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}
