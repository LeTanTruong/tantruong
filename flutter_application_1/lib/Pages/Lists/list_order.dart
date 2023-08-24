import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/model_product.dart';
import 'package:flutter_application_1/providers/order_provider.dart';
import 'package:flutter_application_1/providers/product_provider.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class PageListOrder extends StatefulWidget {
  static const routerName = "/PageListOrder.routerName";
  const PageListOrder({super.key});

  @override
  State<PageListOrder> createState() => _PageListOrderState();
}

class _PageListOrderState extends State<PageListOrder> {
  bool customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Danh sách đơn hàng"),
      ),
      body: FutureBuilder(
        ////3
        future: Provider.of<OrderProvider>(context).getPageListOrder(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          var data = snapshot.data as List;
          return snapshot.hasData
              ? ListView.builder(
                  ////1
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    var dataItem = data[index]["order_items"] as List;
                    return ExpansionTile(
                      title: Text("Mã đơn hàng : ${data[index]["code"]}"),
                      subtitle: Text(DateFormat("kk:mm - dd-MM-yyyy")
                          .format(DateTime.parse(data[index]["created_at"]))),
                      //created_at là ngày
                      children: [
                        ListView.builder(
                          ////4
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: dataItem.length,
                          itemBuilder: ((context, index) {
                            return FutureBuilder(
                              ////6
                              future: Provider.of<ProductProvider>(context,
                                      listen: false)
                                  .getProductById(
                                      dataItem[index]["Product_id"]),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return CircularProgressIndicator();
                                }
                                var item = snapshot.data as ModelProduct;
                                return ListTile(
                                  leading: Image.network(
                                      item.image), //leading nằm bên trái ////7
                                  title: Text(item.name),
                                ); ////7
                              },
                            ); ////6
                          }),
                        ), ////4
                        // ListTile(title: Text('This is tile number 1')),
                      ],
                    );
                  },
                ) ////1
              : Center(
                  ////3
                  child: Text("not data"),
                );
        },
      ),
    );
  }
}
