import 'package:flutter/material.dart';
import 'package:flutter_application_1/wwwwwwwwww/pages/w_page_category.dart';
import 'package:flutter_application_1/wwwwwwwwww/provider/w_provider_home.dart';
import 'package:flutter_application_1/wwwwwwwwww/w_drawer_home.dart';
import 'package:flutter_application_1/wwwwwwwwww/w_model/w_model_home.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PageHome extends StatefulWidget {
  static const routerName = "PageHome.routerName";
  const PageHome({
    super.key,
  });

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  // late Future getDataFuture;
  // @override
  // void didChangeDependencies() {
  //   // TODO: implement didChangeDependencies
  //   super.didChangeDependencies();
  //   //getDataFuture = ProviderHome().getAll();
  //   getDataFuture = context.read<ProviderHome>().getAll();
  // }
  int page = 1;
  final RefreshController _refreshController = ////1
      RefreshController(initialRefresh: false);
  @override ////2
  void initState() {
    // TODO: implement initState
    context.read<ProviderHome>().getAll(page: 1);
    super.initState();
  }

  void _onRefresh() async {
    ////2
    await Future.delayed(Duration(milliseconds: 1000));
    context.read<ProviderHome>().getAll(page: 1); ////9
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    await Future.delayed(Duration(milliseconds: 1000));
    page++;
    context.read<ProviderHome>().getAll(page: page); ////9
    _refreshController.loadComplete();
  } ////2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: drawerHome(),
      ),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            //width: 70,
            //height: 50,
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
////////////////
        //automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("PageHome"),
        actions: [
          ////1 search
          ////bên phải Drawer
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: StreamBuilder(
        stream: context.read<ProviderHome>().ModelHomeStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ModelHome> data = snapshot.data as List<ModelHome>;
            return SmartRefresher(
              controller: _refreshController,
              enablePullDown: true,
              enablePullUp: true,
              //header: WaterDropHeader(),
              onRefresh: _onRefresh,
              onLoading: _onLoading, ////3

              child: ListView.separated(
                ////1
                ////1
                itemCount: data.length, ////7
                //shrinkWrap: true,
                //physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 10);
                },
                itemBuilder: (context, index) {
                  return AspectRatio(
                    aspectRatio: 2,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: InkWell(
                        onTap: (() {
                          Navigator.pushNamed(context, PageCategory.routerName,
                              arguments: {
                                'id': data[index].id,
                                "overview": data[index].overview,
                                "poster_path":
                                    "https://image.tmdb.org/t/p/w500${data[index].poster_path}",
                              }

                              //arguments: {'title: index'}
                              );
                        }),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image: NetworkImage(
                                  "https://image.tmdb.org/t/p/w500${data[index].poster_path}", ////7
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: Column(
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
                                            color: Colors.lime,
                                            overflow: TextOverflow.ellipsis),
                                        maxLines: 1,
                                      ),
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "data",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.lime,
                                            overflow: TextOverflow.ellipsis),
                                        maxLines: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return Center(
              child: Text("not data"),
            );
          }
        },
      ),
    );
  }
}
