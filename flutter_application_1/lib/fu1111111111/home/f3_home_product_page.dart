import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/fu1111111111/product/f4_product_json.dart';
import 'package:flutter_application_1/fu1111111111/provider/f5_product_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeProduct extends StatefulWidget {
  static const routerName = '/HomeProduct.routerName';

  const HomeProduct({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeProduct> createState() => _HomeProductState();
}

class _HomeProductState extends State<HomeProduct> {
  late Future getDataFuture;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    getDataFuture = ProviderProduct().getAll();
  }

  // static const likedKey = 'liked_key'; ////2
  // late bool liked = false;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _restorePersistedPreference();
  // }

  // void _restorePersistedPreference() async {
  //   var preferences = await SharedPreferences.getInstance();
  //   var liked = preferences.getBool(likedKey);
  //   setState(() => this.liked = liked!);
  // }

  // void _persistPreference() async {
  //   setState(() => liked = !liked);
  //   var preferences = await SharedPreferences.getInstance();
  //   preferences.setBool(likedKey, liked);
  // } ////2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'favorite',
          style: TextStyle(fontSize: 20, color: Colors.green),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FutureBuilder(
          future: getDataFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Product> data = snapshot.data as List<Product>;
              return GridView(
                //cuộn thẳng đứng GridView
                //shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 1.2 / 0.5,
                ),
                children: List.generate(
                  data.length,
                  (index) => Container(
                    alignment: Alignment.center,
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            //  data[index].link, ////8
                            'assets/images/mau3.jpg'),
                        fit: BoxFit.fill,
                        //color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          20,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              data[index].name.toString(), ////8
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 24, 129, 250)),
                            ),
                          ),
                          // StatefulBuilder(
                          //   ////9
                          //   builder: (context, setState2) {
                          //     return Checkbox(
                          //       //  activeColor: const Color.fromARGB(
                          //       //    255, 255, 255, 255),

                          //       fillColor: MaterialStatePropertyAll(
                          //           const Color.fromARGB(255, 255, 70, 70)),
                          //       shape: CircleBorder(),
                          //       //  shape:const CircleAvatar(child: Icon(Icons.abc_outlined,size: 40,color: const Color.fromARGB(255, 211, 181, 92),),),
                          //       value: checkbox,
                          //       onChanged: (value) {
                          //         setState2(() {
                          //           checkbox = !checkbox;
                          //         });
                          //       },
                          //     );
                          //   },
                          // ),

                          ///////////////////////////////////////////
                          // IconButton(
                          //   ////3
                          //   onPressed: _persistPreference,
                          //   icon: Icon(
                          //     liked ? Icons.delete : Icons.delete_forever,
                          //     color: liked
                          //         ? Colors.red
                          //         : Color.fromARGB(255, 29, 172, 255),
                          //     size: 30,
                          //   ),
                          // ), ////3
                          FavoriteButton(
                            isFavorite: false,
                            // iconDisabledColor: Colors.white,
                            valueChanged: (_isFavorite) {
                              print('Is Favorite : $_isFavorite');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return Center();
            }
          },
        ),
      ),
    );
  }
}
