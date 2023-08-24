import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/walks/cart_model.dart';
import 'package:provider/provider.dart';
import 'package:quickalert/quickalert.dart';

class CartBuyProduct extends StatefulWidget {
  static const routerName = "/CartBuyProduct.routerName";
  const CartBuyProduct({super.key});

  @override
  State<CartBuyProduct> createState() => _CartBuyProductState();
}

class _CartBuyProductState extends State<CartBuyProduct> {
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("CartPage"),
      ),
      body: Consumer<CartModel>(builder: (context, value, child) {
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
                        ////8
                        leading: Image.asset(
                          value.cartItems[index]["image"],
                          //[2],
                          height: 36,
                        ),
                        title: Text(
                          value.cartItems[index]["name"],
                          //[0],
                        ),
                        subtitle: Text(
                          "\$" + value.cartItems[index]["price"],
                          //[1],
                        ),
                        // removeItemCart loại bỏ mặt hàng ra khỏi giỏ hàng
                        trailing: IconButton(
                          ////9
                          icon: Icon(Icons.cancel),
                          onPressed: () =>
                              Provider.of<CartModel>(context, listen: false)
                                  .removeItemToFromCart(index),
                        ), ////9
                      ),
                    ),
                  );
                },
              ),
            ), ////7
            Padding(
              ////10
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                        ),
                        Text(
                          "\$" + value.calculateTotal(),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        showAlert(QuickAlertType.success);
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              "Pay Now",
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ), ////10
          ],
        );
      }), ////6
    );
  }
}
