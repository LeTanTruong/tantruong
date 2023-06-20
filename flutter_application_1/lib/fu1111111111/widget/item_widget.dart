//widget\item_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/fu1111111111/home/f3_home_product.dart';

class ItemWidget extends StatefulWidget {
  String title;
  String description;
  String link;
  ItemWidget({
    super.key,
    required this.title,
    required this.description,
    required this.link,
  });

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3, ////kích thức
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context, HomeProduct.routerName,
            // arguments: {"id" : HomeProduct[index].id,"title" : HomeProduct[index].title

            // } ////11127 chuyển trang
          );
        },
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image:
                          AssetImage('assets/images/img5.jpg'), ////widget.link
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      //title:
                      widget.title,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 229, 243, 33),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      widget.description,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Text(
                      'Mar.5.2023',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
