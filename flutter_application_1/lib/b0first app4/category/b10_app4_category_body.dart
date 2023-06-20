import 'package:flutter/material.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 4,
        ),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return GridTile(
            footer: const ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              child: GridTileBar(
                backgroundColor: Colors.black45,
                title: Text('Iphone 12 Pro'),
                //
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tempora et aliquam amet id.',
                      style: TextStyle(fontSize: 20),
                    ),
                    //
                    SizedBox(height: 4),
                    //
                    Text(
                      '20.000 VNĐ',
                      style: TextStyle(color: Colors.yellow, fontSize: 16),
                    ),
                  ],
                ),
                trailing: Icon(Icons.shopping_cart),
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('http://placeimg.com/640/480/abstract'),
                ),
              ),
            ),
          );
        });
  }
}
