import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/pages/page_category.dart';
import 'package:flutter_application_1/provider/category_provider.dart';
import 'package:flutter_application_1/provider/provider_home.dart';
import 'package:flutter_application_1/drawers/drawer_home.dart';
import 'package:flutter_application_1/models/model_home.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageHome extends StatefulWidget {
  static const routerName = "PageHome.routerName";
  const PageHome({
    super.key,
  });

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> with WidgetsBindingObserver {
  final RefreshController _refreshController = ////1
      RefreshController(initialRefresh: false);
  final ScrollController scrollController = ScrollController();
  final ValueNotifier<int> notifier = ValueNotifier<int>(0);
  int page = 1;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
    _onRefresh();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (state == AppLifecycleState.inactive) {
      List data = context.read<CategoryProvider>().listCategory;
      await prefs.setString('categoryList', jsonEncode(data));
    }
    super.didChangeAppLifecycleState(state);
  }

  void _onRefresh() async {
    page = 1;
    await Future.delayed(const Duration(milliseconds: 1000));
    context.read<ProviderHome>().getAll(page: 1);
    notifier.value = page;
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    page++;
    notifier.value = page;
    context.read<ProviderHome>().getAll(page: page);
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: DrawerHome(),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Builder(
            builder: (context) {
              return IconButton(
                onPressed: (() {
                  Scaffold.of(context).openDrawer();
                }),
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                  color: kwhile,
                ),
              );
            },
          ),
        ),
        centerTitle: true,
        title: const Text(
          "PageHome",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Color.fromARGB(255, 0, 158, 150)),
        child: StreamBuilder(
          stream: context.read<ProviderHome>().ModelHomeStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ModelHome> data = snapshot.data as List<ModelHome>;
              return SmartRefresher(
                controller: _refreshController,
                enablePullDown: true,
                enablePullUp: true,
                onRefresh: _onRefresh,
                onLoading: _onLoading,
                child: ListView.separated(
                  controller: scrollController,
                  itemCount: data.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 10);
                  },
                  itemBuilder: (context, index) {
                    return AspectRatio(
                      aspectRatio: 1.5,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: InkWell(
                          onTap: (() {
                            Navigator.pushNamed(
                                context, PageCategory.routerName,
                                arguments: {
                                  'id': data[index].id,
                                  "overview": data[index].overview,
                                  "poster_path":
                                      "https://image.tmdb.org/t/p/w500${data[index].poster_path}",
                                });
                          }),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          "https://image.tmdb.org/t/p/w500${data[index].poster_path}", ////7
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              ////Column
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 3,
                                          child: Text(
                                            data[index].overview, ////7
                                            style: const TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                                overflow:
                                                    TextOverflow.ellipsis),
                                            maxLines: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            } else {
              return const Center();
            }
          },
        ),
      ),
    );
  }
}
