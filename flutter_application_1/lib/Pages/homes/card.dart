import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/cart_provider.dart';
import 'package:intl/intl.dart' as intl;
import 'package:provider/provider.dart';
import 'package:quickalert/quickalert.dart';

class PageCard extends StatefulWidget {
  static const routerName = "/PageCard.routerName";
  const PageCard({super.key});

  @override
  State<PageCard> createState() => _PageCardState();
}

class _PageCardState extends State<PageCard> {
  void showAlert(QuickAlertType quickAlertType) {
    QuickAlert.show(
      context: context,
      title: "Đơn hàng",
      text: "Đã mua thành công",
      type: quickAlertType,
    );
  }

  @override
  Widget build(BuildContext context) {
    final itemsData = Provider.of<CartProvider>(context).items;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Trang giỏ hàng"),
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
                        // shrinkWrap: true,
                        // physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 10);
                        },
                        itemBuilder: ((context, index) {
                          //print(dataItem[index].image);
                          return AspectRatio(
                            aspectRatio: 3, ////kích thức
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "${dataItem[index].image}"),
                                            //"assets/images/img4.jpg"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      //  color: Colors.amber,
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "${dataItem[index].name}",
                                            style: TextStyle(
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
                                                .format(dataItem[index].price),
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
                                              .decrease(value.items.keys
                                                  .toList()[index]);
                                        }),
                                        child: Icon(
                                          Icons.remove,
                                          size: 30,
                                          color: Colors.amber,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child:
                                            Text("${dataItem[index].quantity}"),
                                      ),
                                      InkWell(
                                        onTap: (() {
                                          Provider.of<CartProvider>(context,
                                                  listen: false)
                                              .increase(value.items.keys
                                                  .toList()[index]);
                                        }),
                                        child: Icon(
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
                      showAlert(QuickAlertType.success);
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(
                          412,
                          80,
                        ),
                        backgroundColor: Color.fromARGB(255, 255, 7, 193),
                        elevation: 0),
                    child: const Text(
                      'Click Me',
                      style: TextStyle(fontSize: 25, color: Colors.blue),
                    ),
                  ),
                ),
              ],
            )
          : Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/storyset3.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
    );
  }
}
