import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/c0/c4_provider_category.dart';

//import 'c3_category_json.dart';

class Body_safeArea extends StatefulWidget {
  const Body_safeArea({
    super.key,
  });

  @override
  State<Body_safeArea> createState() => _Body_safeAreaState();
}

class _Body_safeAreaState extends State<Body_safeArea> {
  @override
  Widget build(BuildContext context) {
    print('body');
    //var category = Provider.of<Category>(context, listen: false);

    return FutureBuilder(
        ////5
        future: ProviderCategory().readJson(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          print(snapshot);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } ////5
          var categoryItem = snapshot.hasData ? snapshot.data : []; ////5
          //

          return snapshot.hasData
              ? ////6
              SafeArea(
                  ////1 GridView
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: GridView(
                      //cuộn thẳng đứng GridView
                      //shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        childAspectRatio: 1.2 / 0.5,
                      ),
                      children: List.generate(
                        categoryItem.length,
                        (index) => Container(
                          alignment: Alignment.center,
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                categoryItem[index].image, ////8
                              ),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                20,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  categoryItem[index].name.toString(), ////8
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),

                                Icon(
                                  Icons.radio_button_unchecked,
                                  size: 30,
                                  color:
                                      //  category.isRadioButtonUnchecked
                                      //     ? Colors.red
                                      //     :
                                      Colors.white,
                                ),

                                //

                                //
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : Center(
                  ////7
                  child: Text(
                    'Not Data',
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 240, 73, 73)),
                  ),
                );
        });
  }
}
