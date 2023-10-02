import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/pages/bottom_navigation_bar_screen.dart';
import 'package:flutter_application_1/providers/cart_provider.dart';
import 'package:intl/intl.dart' as intl;
import 'package:provider/provider.dart';

class ListCartPage extends StatefulWidget {
  static const routerName = "/ListCartPage.routerName";
  const ListCartPage({super.key});

  @override
  State<ListCartPage> createState() => _ListCartPageState();
}

class _ListCartPageState extends State<ListCartPage> {
  @override
  Widget build(BuildContext context) {
    final itemsData = Provider.of<CartProvider>(context).items;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: kAppBar,
          title: const Text(
            "Trang giỏ hàng",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: itemsData.isNotEmpty
            ? Stack(
                children: [
                  Positioned.fill(
                    child: Consumer<CartProvider>(
                      builder: (context, value, child) {
                        var dataItem = value.items.values.toList();

                        return ListView.separated(
                          itemCount: value.items.length,
                          separatorBuilder: (context, index) {
                            return const SizedBox(height: 10);
                          },
                          itemBuilder: ((context, index) {
                            return AspectRatio(
                              aspectRatio: 3,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "${dataItem[index].image}"),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "${dataItem[index].name}",
                                              style: const TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 229, 243, 33),
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            Text(
                                              intl.NumberFormat.simpleCurrency(
                                                      locale: "vi",
                                                      decimalDigits: 0)
                                                  .format(
                                                      dataItem[index].price),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: (() {
                                            Provider.of<CartProvider>(context,
                                                    listen: false)
                                                .decrease(
                                              value.items.keys.toList()[index],
                                            );
                                          }),
                                          child: const Icon(
                                            Icons.remove,
                                            size: 30,
                                            color: Colors.amber,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                              "${dataItem[index].quantity}"),
                                        ),
                                        InkWell(
                                          onTap: (() {
                                            Provider.of<CartProvider>(context,
                                                    listen: false)
                                                .increase(
                                              value.items.keys.toList()[index],
                                            );
                                          }),
                                          child: const Icon(
                                            Icons.add,
                                            size: 30,
                                            color: Colors.amber,
                                          ),
                                        ),
                                      ],
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
                  Positioned(
                    bottom: 0,
                    child: ElevatedButton(
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
                            });
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(
                            412,
                            80,
                          ),
                          backgroundColor: kAppBar,
                          elevation: 0),
                      child: const Text(
                        'Pay Now',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            : Container(
                width: double.infinity,
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/store3.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
      ),
    );
  }
}
