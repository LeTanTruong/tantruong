//r2_page_home.dart
///////////////////////////
import 'package:flutter/material.dart';
import 'package:flutter_application_1/items/r_item_home.dart';
import 'package:flutter_application_1/provider/r_provider_homeinhome.dart';
import 'package:flutter_application_1/router.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PageHome extends StatefulWidget {
  const PageHome({
    super.key,
  });

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  int page = 1;
  final RefreshController _refreshController = ////1
      RefreshController(initialRefresh: false);

  @override ////9
  void initState() {
    // TODO: implement initState
    context.read<ProviderHomeinHome>().getAll(page: 1);
    super.initState();
  }

  void _onRefresh() async {
    ////2
    await Future.delayed(Duration(milliseconds: 1000));
    context.read<ProviderHomeinHome>().getAll(page: 1); ////8
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    await Future.delayed(Duration(milliseconds: 1000));
    page++;
    context.read<ProviderHomeinHome>().getAll(page: page); ////8
    _refreshController.loadComplete();
  } ////2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("itle"),
      ),
      body: StreamBuilder(
        ////7
        stream: context.read<ProviderHomeinHome>().ItemHomeStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ItemHome> data = snapshot.data as List<ItemHome>;
            return SmartRefresher(
              controller: _refreshController,
              enablePullDown: true,
              enablePullUp: true,
              //  header: const WaterDropHeader(),
              onRefresh: _onRefresh,
              onLoading: _onLoading,

              child: ListView.separated(
                ////1
                itemCount: data.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 10);
                },
                itemBuilder: (context, index) {
                  return AspectRatio(
                    aspectRatio: 2,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: InkWell(
                        onTap: (() {
                          Navigator.pushNamed(
                            context,
                            RouterName.pageProduct,
                            arguments: {
                              'id': data[index].id,
                              "overview": data[index].overview,
                              "poster_path":
                                  'https://image.tmdb.org/t/p/w500${data[index].poster_path}',
                              "original_title": data[index].original_title,
                            },
                          );
                        }),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://image.tmdb.org/t/p/w500${data[index].poster_path}', ////7
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
                                        data[index].overview,
                                        style: const TextStyle(
                                            fontSize: 30,
                                            color: Colors.lime,
                                            overflow: TextOverflow.ellipsis),
                                        maxLines: 1,
                                      ),
                                    ),
                                    const Expanded(
                                      child: Text(
                                        'data',
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
            ); ////1
          } else {
            ////7
            return const Center(
              child: Text('not data'),
            );
          }
        },
      ),
    );
  }
}
