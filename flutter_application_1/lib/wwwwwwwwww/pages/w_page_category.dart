import 'package:flutter/material.dart';

class PageCategory extends StatelessWidget {
  static const routerName = "PageCategory.routerName";
  const PageCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arg = ////4
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    //print(arg);

    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text("widget.title"),
      // ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 20,
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 500,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(arg["poster_path"]),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.pink,
                                ),
                              )),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      arg["overview"],
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: const Color.fromARGB(
                                              255, 52, 7, 255),
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  )),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    arg["overview"],
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: const Color.fromARGB(
                                            255, 255, 7, 181),
                                        overflow: TextOverflow.ellipsis),
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        arg["overview"],
                        style: TextStyle(
                            fontSize: 20, overflow: TextOverflow.ellipsis),
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
