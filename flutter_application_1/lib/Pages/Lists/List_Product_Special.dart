import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/homes/card.dart';
import 'package:flutter_application_1/Pages/walks/details_product_page.dart';
import 'package:flutter_application_1/providers/cart_provider.dart';
import 'package:flutter_application_1/providers/product_provider.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart' as intl;
import 'package:badges/badges.dart' as badges;

class ListProductSpecial extends StatefulWidget {
  static const routerName = "/ListProductSpecial.routerName";
  ListProductSpecial({
    super.key,
  });

  @override
  State<ListProductSpecial> createState() => _ListProductSpecialState();
}

class _ListProductSpecialState extends State<ListProductSpecial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (() {}),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.library_books),
                        ),
                        Text("Danh sách đơn hàng"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Consumer<CartProvider>(
                      builder: (context, value, child) {
                        return badges.Badge(
                          badgeContent: Text("${value.items.length}"),
                          //position: badges.BadgePosition.topEnd(top: 0),
                          child: InkWell(
                            onTap: (() {
                              // Navigator.pushReplacementNamed(
                              //   context,
                              //   PageCard.routerName,
                              // );
                              Navigator.of(context, rootNavigator: true)
                                  .pushNamed("/PageCard.routerName");
                            }),
                            child: const Icon(Icons.shopping_cart, size: 50),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              FutureBuilder(
                future: Provider.of<ProductProvider>(context).getAll(),
                //initialData: [],
                builder: (context, snapshot) {
                  // if (snapshot.connectionState == ConnectionState.waiting) {
                  //   return Center(
                  //     child: CircularProgressIndicator(),
                  //   );
                  // }
                  ////
                  if (snapshot.hasData) {
                    var data = snapshot.data! as List;
                    return ListView.separated(
                      itemCount: data.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 10);
                      },
                      itemBuilder: (context, index) {
                        return AspectRatio(
                          aspectRatio: 3, ////kích thức
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    image: DecorationImage(
                                        image: NetworkImage(data[index].image),
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
                                        data[index].name,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color:
                                              Color.fromARGB(255, 229, 243, 33),
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        intl.NumberFormat.simpleCurrency(
                                                locale: "vi", decimalDigits: 0)
                                            .format(data[index].price),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: (() {
                                    Provider.of<CartProvider>(context,
                                            listen: false)
                                        .addCart(
                                      data[index].id,
                                      data[index].image,
                                      data[index].name,
                                      data[index].price,
                                      //1
                                      //data[index].quantity,
                                    );
                                  }),
                                  child: const Icon(
                                    Icons.shopping_cart_checkout,
                                    size: 30,
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
