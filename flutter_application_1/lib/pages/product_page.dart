import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/category_provider.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatelessWidget {
  static const routerName = "ProductPage.routerName";
  const ProductPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/mau-cam.jpg"),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: (() {
                        Navigator.pop(context);
                      }),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Consumer<CategoryProvider>(
                      builder: (context, value, child) {
                        return Text(
                          value.listCategory.toString(),
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        );
                      },
                    )
                  ],
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return AspectRatio(
                        aspectRatio: 4 / 1,
                        child: Row(
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Text(
                                  "numberProduct",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Consumer<CategoryProvider>(
                                builder: (context, value, child) {
                                  return CheckboxListTile(
                                    fillColor: const MaterialStatePropertyAll(
                                        Colors.green),
                                    checkColor: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    shape: const CircleBorder(),
                                    value: value.listCategory.contains(index)
                                        ? true
                                        : false,
                                    onChanged: (_) {
                                      value.checkBox(index);
                                    },
                                    title: Text(
                                      "data $index",
                                      style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemCount: 11),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
