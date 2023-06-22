import 'package:flutter/material.dart';
import 'package:flutter_application_1/jjjjjjjjjjjjj/body/home_category_2_j.dart';
import 'package:flutter_application_1/jjjjjjjjjjjjj/drawer/j6_drawer.dart';

class HomeBody extends StatelessWidget {
  ////////////////////////////////////////////////////////////////////////////////////////////
  static const routerName = '/'; ////1
  /////////////////////////////////////////////////////////////////////////////////////////////
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ContainerDrawer(),
      ),
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        ////
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
        ////
        actions: [
          ////1 search
          ////actions bên phải Drawer

          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
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
      ),
      ////appbar

      ////appbar
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              HomeCategory(
                title: 'thể thao 1',
                intro: 'View All1',
              ),
              HomeCategory(
                title: 'thời sự 2',
                intro: 'View All2',
              ),
            ],
          ),
        ),
      ),
      ////body
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
