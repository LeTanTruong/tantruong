//lib\Pages\walks\walk_details_product_page.dart
import 'package:flutter/material.dart';

class WalkDetailsProductPage extends StatelessWidget {
  static const routerName = "/WalkDetailsProductPage.routerName";
  const WalkDetailsProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: Text(
            arg["name"],
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              ////pinned: false /\ kéo màn hình lên
              pinned: false,
              snap: false,
              floating: false,
              ////expandedHeight /\ chiều cao
              expandedHeight: 400.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  arg["title"],
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                background: Padding(
                  padding: const EdgeInsets.all(60),
                  child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      arg["image"],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      arg["description"],
                      style: const TextStyle(
                        fontSize: 20,
                      ),
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
