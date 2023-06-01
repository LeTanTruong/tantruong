//threegiaodien\three2_body.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/threegiaodien/three3_item.dart';
import 'package:flutter_application_1/threegiaodien/three4_provider.dart';
import 'package:flutter_application_1/threegiaodien/three5_category.dart';
import 'package:flutter_swipe/flutter_swipe.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;

class three2Body extends StatelessWidget {
  const three2Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = Provider.of<Three4Provider>(context).items;
    print('three2Body'); /////print
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/img7.jpg',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: items.isNotEmpty ////4445 đếm số lượt yêu thích
            ? Swiper(
                layout: SwiperLayout.DEFAULT,
                itemWidth: 400,
                itemHeight: 500.0,
                scrollDirection: Axis.vertical,
                itemCount: items.length,
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => const Three5Category()),
                        ),
                      );
                    },
                    child: ChangeNotifierProvider.value(
                      ////3333 nhấn 1 lần ra đỏ nhấn 2 lần thì bỏ
                      ///chuyền những phần tử như text, icon,... phải có khi chuyền
                      value: items[
                          index], ////3333 nhấn 1 lần ra đỏ nhấn 2 lần thì bỏ

                      ///
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        child: GridTile(
                          header: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            child: Column(
                              children: [
                                GridTileBar(
                                  trailing: Container(
                                    padding: const EdgeInsets.only(
                                      right: 5,
                                    ),
                                    child: Consumer<Item>(
                                      builder: (context, item, child) {
                                        ////3333 nhấn 1 lần ra đỏ nhấn 2 lần thì bỏ
                                        return InkWell(
                                          onTap: (() {
                                            ////3333 nhấn 1 lần ra đỏ nhấn 2 lần thì bỏ
                                            item.toggleIsFavorite(); ////3333 nhấn 1 lần ra đỏ nhấn 2 lần thì bỏ
                                            Provider.of<Three4Provider>(context,
                                                    listen: false)
                                                .handleCountItemFav(); ////4444 đếm số lượt yêu thích
                                          }),
                                          child: Icon(
                                            Icons.favorite,
                                            size: 30,
                                            color: item.isFavorite
                                                ? Colors.red
                                                : Colors
                                                    .white, ////3334 nhấn 1 lần ra đỏ nhấn 2 lần thì bỏ
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  title: Consumer<Item>(
                                    builder: (context, value, child) {
                                      return badges.Badge(
                                        ////1111 bages nút nhấn
                                        badgeContent: Text(Provider.of<
                                                Three4Provider>(context)
                                            .countItemFavorite
                                            .toString()), ////1114 bages nút nhấn
                                        child: const Padding(
                                          padding: EdgeInsets.only(right: 20),
                                          child: Icon(Icons.favorite,
                                              size: 20, color: Colors.white),
                                        ),
                                      );
                                    },
                                  ),
                                  subtitle: Text(
                                    ////đoạn chữ nằm dưới
                                    items[index].name,
                                    style: const TextStyle(
                                      fontSize: 25,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.bold,
                                      // overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          footer: Padding(
                            padding: const EdgeInsets.only(
                              top: 30,
                              bottom: 60,
                            ),
                            child: GridTileBar(
                              title: Consumer<Item>(
                                builder: (context, item, child) {
                                  return Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: (() {
                                          item.toggleIsStar();
                                        }),
                                        child: Icon(
                                          Icons.star,
                                          size: 30,
                                          color: item.isStar
                                              ? Colors.yellow
                                              : Colors.white,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (() {
                                          item.toggleIsStar();
                                        }),
                                        child: Icon(
                                          Icons.star,
                                          size: 30,
                                          color: item.isStar
                                              ? Colors.yellow
                                              : Colors.white,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (() {
                                          item.toggleIsStar();
                                        }),
                                        child: Icon(
                                          Icons.star,
                                          size: 30,
                                          color: item.isStar
                                              ? Colors.yellow
                                              : Colors.white,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (() {
                                          item.toggleIsStar();
                                        }),
                                        child: Icon(
                                          Icons.star,
                                          size: 30,
                                          color: item.isStar
                                              ? Colors.yellow
                                              : Colors.white,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (() {
                                          item.toggleIsStar();
                                        }),
                                        child: Icon(
                                          Icons.star,
                                          size: 30,
                                          color: item.isStar
                                              ? Colors.yellow
                                              : Colors.white,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                              subtitle: Text(
                                ////đoạn chữ nằm dưới
                                items[index].description,
                                //items[index].description,
                                style: const TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 30,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    items[index].image,
                                  ),
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            : Container(
                ////4446 đếm số lượt yêu thích
                child: const Center(
                  child: Text('khong co dữ liệu'),
                ),
              ),
      ),
    );
  }
}
