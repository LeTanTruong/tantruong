import 'package:flutter/material.dart';
import 'package:flutter_application_1/fu1111111111/drawer/container_drawer.dart';

import 'home_category_2.dart';

class HomePage extends StatefulWidget {
  static const routerName = '/';
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ContainerDrawer2(),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ////actions
        actions: [
          ////1 search
          ////bên phải Drawer
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(
                  Radius.circular(60),
                ),
              ),
              child: IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: CustomSearch());
                },
                icon: Icon(Icons.search),
              ),
            ),
          ),
        ],
        ////actions
////leading
        leading: Padding(
          ////bên trái
          padding: const EdgeInsets.all(6.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Builder(
              builder: (context) {
                return IconButton(
                  onPressed: (() {
                    Scaffold.of(context).openDrawer();
                  }),
                  icon: const Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.green,
                  ),
                );
              },
            ),
          ),
        ),
////////leading
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeCategory(
                title: 'Thể Thao',
                //  description: '',
              ),
              HomeCategory(
                title: 'Thời sự',
                //  description: '',
              ),
              ////
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  ////2 search
  List<String> allData = [
    'American',
    'Russia',
    'China',
    'Germany',
    'Italy',
    'France',
    'England',
    'Vietnamese'
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: (() {
          query = '';
        }),
        icon: Icon(Icons.clear),
      ),
    ];
  }
  ////

  ////

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: (() {
        close(context, null);
      }),
      icon: Icon(
        Icons.arrow_back,
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(title: Text(result));
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(title: Text(result));
        });
  }
}
