//3333333\router\34_routes.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/3333333/homebody/32_home_page.dart';
import 'package:flutter_application_1/3333333/pages/category135muahang/33_category_page.dart';
import 'package:flutter_application_1/3333333/pages/category135muahang/38_category_page5.dart';
import 'package:flutter_application_1/3333333/pages/category246danhsach/35_category_page2.dart';
import 'package:flutter_application_1/3333333/pages/category135muahang/36_category_page3.dart';
import 'package:flutter_application_1/3333333/pages/category246danhsach/37_category_page4.dart';
import 'package:flutter_application_1/3333333/pages/category246danhsach/39_category_page6.dart';
import 'package:page_transition/page_transition.dart';

class RouteCustom {
  static Route onGenerateRoute(RouteSettings settings) {
    //  final args = settings.arguments as Map;
    switch (settings.name) {
      ////3
      case RouterName.homePage:
        return MaterialPageRoute(builder: (context) {
          return const HomePage();
        });
      ///////////////////////////////////////categoryPage
      case RouterName.categoryPage:
        return PageTransition(
          ////6 chuyền name sang màn hình khác
          child: CategoryPage(),
          type: PageTransitionType.fade,
        ); ////6
      case RouterName.categoryPage2:
        return PageTransition(
          ////6 chuyền name sang màn hình khác
          child: CategoryPage2(),
          type: PageTransitionType.fade,
        );
      case RouterName.categoryPage3:
        return PageTransition(
          ////6 chuyền name sang màn hình khác
          child: CategoryPage3(),
          type: PageTransitionType.fade,
        );
      case RouterName.categoryPage4:
        return PageTransition(
          ////6 chuyền name sang màn hình khác
          child: CategoryPage4(),
          type: PageTransitionType.fade,
        );
      case RouterName.categoryPage5:
        return PageTransition(
          child: CategoryPage5(),
          type: PageTransitionType.fade,
        );
      case RouterName.categoryPage6:
        return PageTransition(
          child: CategoryPage6(),
          type: PageTransitionType.fade,
        );

      default: ////4 lỗi mạng
        return MaterialPageRoute(builder: (context) {
          return Container(
            child: const Text('Error Router'),
          );
        }); ////4 lỗi mạng
    }
  }
}

/////////////////////////////////////////////////////////////
//3333333\router\35_router_name.dart
class RouterName {
  ////5
  static const homePage = '/home';
  static const categoryPage = '/category';
  static const categoryPage2 = '/category2';
  static const categoryPage3 = '/category3';
  static const categoryPage4 = '/category4';
  static const categoryPage5 = '/category5';
  static const categoryPage6 = '/category6';
} ////5