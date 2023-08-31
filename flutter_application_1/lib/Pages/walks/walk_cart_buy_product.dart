import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/bottom_navigation_bar_screen.dart';
import 'package:flutter_application_1/Pages/walks/walk_cart_model.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:provider/provider.dart';

class WalkCartBuyProduct extends StatefulWidget {
  static const routerName = "/WalkCartBuyProduct.routerName";
  const WalkCartBuyProduct({super.key});

  @override
  State<WalkCartBuyProduct> createState() => _WalkCartBuyProductState();
}

class _WalkCartBuyProductState extends State<WalkCartBuyProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: kAppBar,
        title: const Text(
          "CartPage",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Consumer<WalkCartModel>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                ////7
                child: ListView.builder(
                  itemCount: value.cartItems.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.orange),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            value.cartItems[index]["image"],
                            height: 36,
                          ),
                          title: Text(
                            value.cartItems[index]["name"],
                          ),
                          subtitle: Text(
                            "\$" + value.cartItems[index]["price"],
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.cancel),
                            onPressed: () => Provider.of<WalkCartModel>(context,
                                    listen: false)
                                .removeItemToFromCart(index),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ), ////7
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Total Price",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            "\$" + value.calculateTotal(),
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                      ////ElevatedButton
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: kAppBar, elevation: 0),
                        onPressed: () {
                          showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Đơn hàng"),
                                content: const Text("Đã mua thành công"),
                                actions: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pushAndRemoveUntil(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const BottomNavigationBarScreen()),
                                          (route) => false);
                                    },
                                    icon: const Icon(
                                      Icons.done,
                                      size: 30,
                                      color: Color.fromARGB(255, 110, 243, 33),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: const Text(
                          "Pay now",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ////\\\\
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
