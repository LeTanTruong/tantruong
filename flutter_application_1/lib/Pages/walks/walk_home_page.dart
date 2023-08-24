import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/walks/cart_buy_product.dart';
import 'package:flutter_application_1/Pages/walks/cart_model.dart';
import 'package:flutter_application_1/Pages/walks/details_product_page.dart';
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
          centerTitle: true,
          title: const Text("Walk Home Page"),
        ), ////2
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              ////4
              child: Consumer<CartModel>(
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
                      return
                          // GroceryItemTile(
                          //   itemName: value.shopItems[index][0],
                          //   itemPrice: value.shopItems[index][1],
                          //   imagePath: value.shopItems[index][2],
                          //   color: value.shopItems[index][3],
                          //   onPressed:
                          //() {
                          //     Provider.of<CartModel>(context, listen: false)
                          //         .addItemToCart(index);
                          //   },
                          // );
                          ////
                          Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: value.shopItems[index]["color"],
                            //[3],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Image.asset(
                                  value.shopItems[index]["image"],
                                  //[2],
                                  fit: BoxFit.cover,
                                  // height: 150,
                                  // width: 150,
                                ),
                              ),
                              const SizedBox(height: 10),
                              ////Tên sản phẩm
                              Text(
                                value.shopItems[index]["name"],
                                //[0],
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, DetailsProductPage.routerName,
                                        arguments: {
                                          value.shopItems[index]["name"],
                                          //[0],
                                          value.shopItems[index]["price"],
                                          //[1],
                                          value.shopItems[index]["image"],
                                          //[2],
                                          value.shopItems[index]["color"],
                                          //[3],
                                        });
                                  },
                                  child: Text("Chi tiết")),
                              ////giá tiền
                              //// MaterialButton nút vật liệu
                              MaterialButton(
                                onPressed: () {
                                  Provider.of<CartModel>(context, listen: false)
                                      .addItemToCart(index);
                                },
                                color: value.shopItems[index]["color"],
                                //[3],
                                child: Text(
                                  "take ${value.shopItems[index]["price"]
                                  //[1]
                                  }",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              // InkWell(
                              //   onTap: () {
                              //     Provider.of<CartModel>(context, listen: false)
                              //         .addItemToCart(index);
                              //   },
                              //   child: Container(
                              //     //margin: EdgeInsets.all(20),
                              //     width: 100,
                              //     height: 50,
                              //     decoration: BoxDecoration(
                              //         color: value.shopItems[index][3],
                              //         border: Border.all(
                              //             width: 2, color: Colors.black),
                              //         borderRadius: BorderRadius.circular(20)),
                              //     child: Center(
                              //       child: Text(
                              //         "take ${value.shopItems[index][1]}",
                              //         style: TextStyle(
                              //           color: Colors.black,
                              //           fontSize: 13,
                              //         ),
                              //         //textAlign: TextAlign.center,
                              //       ),
                              //     ),
                              //   ),
                              // ),
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
                return const CartBuyProduct();
              },
            ),
          ),
          backgroundColor: Colors.orange,
          child: const Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}
