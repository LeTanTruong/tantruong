import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/pages/bottom_navigation_bar_screen.dart';
import 'package:flutter_application_1/pages/products_detail/product_add.dart';
import 'package:readmore/readmore.dart';

class ProductDetailPage extends StatefulWidget {
  static const routerName = "/ProductDetailPage.routerName";

  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  ////class
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arg =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    ////class\\\\
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kAppBar,
          title: Text(
            arg["name"],
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                arg["name"],
                style: const TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                width: double.infinity,
                height: 400,
                child: Image(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                    arg["image"],
                  ),
                ),
              ),
              ////
              ReadMoreText(
                arg["description"],
                style: const TextStyle(fontSize: 20, color: Colors.blue),
                trimLines: 7,
                trimMode: TrimMode.Line,
                trimCollapsedText: "Show more",
                trimExpandedText: "Show less",
                moreStyle: const TextStyle(fontSize: 25, color: Colors.black),
                lessStyle: const TextStyle(fontSize: 25, color: Colors.black),
              ),
              ////
              const ProductAdd(),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: (() {
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
                }),
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    minimumSize: const Size(
                      400,
                      50,
                    ),
                    backgroundColor: Colors.orange,
                    elevation: 0),
                child: const Text(
                  'Pay Now',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        ////
      ),
    );
  }
}
