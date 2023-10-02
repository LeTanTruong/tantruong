import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/products_detail/product_detail_provider/product_detail_provider.dart';
import 'package:provider/provider.dart';

class ProductAdd extends StatefulWidget {
  const ProductAdd({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductAdd> createState() => _ProductAddState();
}

class _ProductAddState extends State<ProductAdd> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Provider.of<ProductDetailProvider>(context, listen: false).reduce();
          },
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              backgroundColor: Colors.orange,
              elevation: 0),
          //////dấu trừ trừ trừ
          child: const Text(
            '-',
            style: TextStyle(
              color: Color.fromARGB(255, 3, 3, 3),
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        //// số number
        Consumer<ProductDetailProvider>(
          builder: (context, value, child) {
            return Text(
              Provider.of<ProductDetailProvider>(context).number.toString(),
              style: const TextStyle(
                color: Color.fromARGB(255, 3, 3, 3),
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            );
          },
        ),
        ////+
        ElevatedButton(
          onPressed: () {
            Provider.of<ProductDetailProvider>(context, listen: false)
                .increment();
          },
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              backgroundColor: Colors.orange,
              elevation: 0),
          child: const Text(
            '+',
            style: TextStyle(
              color: Color.fromARGB(255, 3, 3, 3),
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        )
      ],
    );
  }
}
