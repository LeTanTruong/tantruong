import 'dart:ui';
import 'package:flutter/material.dart';

class four2_body extends StatelessWidget {
  const four2_body({
    Key? Key,
  }) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/img7.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5.0,
          sigmaY: 5.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            //cuộn thẳng đứng GridView
            //shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 1 / 1.4,
            ),
            children: List.generate(
              10,
              (index) => Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/img7.jpg",
                    ),
                    fit: BoxFit.fill,
                  ),
                  // color: Color.fromARGB(255, 252, 252, 252),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Color.fromARGB(255, 119, 113, 113),
                  //     offset: Offset(-2, -2),
                  //     blurRadius: 1, //độ nhòe
                  //   )
                  // ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Qui iste dolorrg vrs gv ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            ////đoạn chữ nằm dưới
                            'Admini vd b d',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            maxLines: 3,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star, size: 30, color: Colors.white),
                              Icon(Icons.star, size: 30, color: Colors.white),
                              Icon(Icons.star, size: 30, color: Colors.white),
                              Icon(Icons.star, size: 30, color: Colors.white),
                              Icon(Icons.star, size: 30, color: Colors.white),
                            ],
                          ),
                          Text(
                            ////đoạn chữ nằm dưới

                            'Doloref b dfb  r tfb t frbgrv ef v shb trhn by trn yth ns f r frth bte b d v rea rb r av erfv re av era v re  er  sf re  tr btr b rn  f',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 3, 3, 3),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
