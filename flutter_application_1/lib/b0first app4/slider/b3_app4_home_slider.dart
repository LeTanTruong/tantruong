//slider\b3_app4_home_slider.dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'b5_app4_slider_provider.dart';

class HomeSlider extends StatefulWidget {
  ////1117
  const HomeSlider({Key? key}) : super(key: key);

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  late Future sliderFuture; ////1118

////
  @override
  void didChangeDependencies() {
    ////1118
    sliderFuture = Provider.of<SliderProvider>(context).getSlider();
    super.didChangeDependencies(); ////1118
  } ////1118

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: FutureBuilder(
        ////1119 FutureBuilder
        future: sliderFuture,
        initialData: [],
        builder: (context, asyncData) {
          ////1119 FutureBuilder

          var sliderData = []; ////11114 if else

          if (asyncData.hasData) {
            sliderData = asyncData.data! as List; ////11114 if else
          } else {
            return Container(
              ///cho Container vào trong FutureBuilder
              child: Text(asyncData.error.toString()), ////11114 if else
            );
          } ////11114 if else
          //if else nếu link đúng thì cho ra dữ liệu, còn ko đúng thì 'Error'

          return asyncData.hasData ////11111 asyncData.hasData
              ? CarouselSlider(
                  ////1112 CarouselSlider
                  options: CarouselOptions(height: 200.0),

                  ///DN chiều cao hình ảnh và có nhiều sự lựa chọn trong Carousel...
/////options: CarouselOptions(viewportFraction: 1), //viewportFraction khoảng cách tấm hình chiếm bao nhiêu
/////options: CarouselOptions(autoPlay: true), //autoPlay tự động chạy hình ảnh
/////options: CarouselOptions(scrollDirection: Axis.horizontal), //scrollDirection tùy theo chiều muốn chọn nằm ngang hay nằm dọc

                  items: sliderData.map((i) {
                    ////11112 {1, 2, 3, 4, 5].map((i) thay thành sliderData.map
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  i.image), ////11113 NetworkImage(i.image)
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ) ////1112 CarouselSlider đến
              : Container(
                  child: const Text('NO DATA'), ////11111 asyncData.hasData
                );
        },
      ),
    );
  }
}
