import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/slider_provider.dart';
import 'package:provider/provider.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({Key? key}) : super(key: key);

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  late Future sliderFuture;

////
  @override
  void didChangeDependencies() {
    sliderFuture = Provider.of<SliderProvider>(context).getSlider();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: FutureBuilder(
        future: sliderFuture,
        initialData: [],
        builder: (context, asyncData) {
          var sliderData = [];
          if (asyncData.hasData) {
            sliderData = asyncData.data! as List;
          } else {
            print(asyncData.error);
            return Container(
              child: const Text('Error'),
            );
          }
          return asyncData.hasData
              ? CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                  ),
                  items: sliderData.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          ///chiều rộng
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  i.image), //cho hình ảnh trên mạng
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                )
              : Container(
                  child: const Text('NO DATA'),
                );
        },
      ),
    );
  }
}
