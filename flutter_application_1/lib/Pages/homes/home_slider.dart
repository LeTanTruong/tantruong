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
  late Future sliderFuture; //tạo ra biến

////
  @override
  void didChangeDependencies() {
    sliderFuture = Provider.of<SliderProvider>(context).getSlider();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10), //padding cách trên dưới , hay trái phải
      child: FutureBuilder(
        //www CarouselSlider 1 cho ra FutureBuilder 2

        future: sliderFuture,
        initialData: [],
        builder: (context, asyncData) {
          var sliderData = []; //sliderData không có nên cho rỗng
          if (asyncData.hasData) {
            sliderData = asyncData.data!
                as List; //DN sliderData nếu tồn tại thì duyệt các item, phần tử , mục
          } else {
            print(asyncData.error);
            return Container(
              child: Text('Error'),
            );
          } //if else nếu link đúng thì cho ra dữ liệu, còn ko đúng thì 'Error'

          ///// bê nguyên CarouseSlider cho vào return
          return asyncData.hasData
              ? CarouselSlider(
                  //www CarouselSlider 1  ở dưới
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    //  autoPlayInterval: Duration(seconds: 300),
                  ),

                  ///DN chiều cao hình ảnh và có nhiều sự lựa chọn trong Carousel...
/////options: CarouselOptions(viewportFraction: 1), //viewportFraction khoảng cách tấm hình chiếm bao nhiêu
/////options: CarouselOptions(autoPlay: true), //autoPlay tự động chạy hình ảnh
/////options: CarouselOptions(scrollDirection: Axis.horizontal), //scrollDirection tùy theo chiều muốn chọn nằm ngang hay nằm dọc
                  items: sliderData.map((i) {
                    ///DN duyệt phần tử, mục cho hình ảnh
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,

                          ///chiều rộng
                          margin: EdgeInsets.symmetric(
                              horizontal:
                                  5.0), //DN margin cách trái phải hay trên dưới
////decoration
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              //cho ra hình ảnh
                              fit: BoxFit.cover,

                              ///DN tràng màn hình
                              image: NetworkImage(
                                  i.image), //cho hình ảnh trên mạng
                            ),
                          ),
                          // child: Text(
                          //   'text $i',
                          //   style: TextStyle(fontSize: 16.0), ///Đn chữ
                          // )
                        );
                      },
                    );
                  }).toList(),
                )
              : Container(
                  child: Text(
                      'NO DATA'), //DN nếu ko có dữ liệu thì 'NO DATA' tại CarouselSlider
                );
        },
      ),
    );
  }
}
