//hhhhhhhhhh\h6_routers.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/hhhhhhhhhh/pagessssssssss/h1_page1_part1.dart';
import 'package:flutter_application_1/hhhhhhhhhh/pagessssssssss/h5_page2_part1.dart';
import 'package:flutter_application_1/hhhhhhhhhh/pagessssssssss/h8_loginsignup_page1_part1.dart';
import 'package:page_transition/page_transition.dart';

class RouteCustom {
  static Route onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments as Map;
    switch (settings.name) {
      case RouterName.page1Part1:
        return MaterialPageRoute(builder: (context) {
          return const Page1Part1();
        });
////////////////////////////////////////
      case RouterName.page2Part1:
        if (args['overview'] != null) {
          return PageTransition(
            child: Page2Part1(
              overview: args['overview'],
            ),
            type: PageTransitionType.fade,
          );
        }

        return PageTransition(
          child: const Page2Part1(),
          type: PageTransitionType.fade,
        );
////////////////////////////////////////
      case RouterName.loginsignupPage1Part1:
        return PageTransition(
          child: const LoginsignupPage1Part1(),
          type: PageTransitionType.fade,
        );
///////////////////////////////////////
      default:
        return MaterialPageRoute(builder: (context) {
          return Container(
            child: const Text('Error Router'),
          );
        });
    }
  }
}

class RouterName {
  static const page1Part1 = '/page1Part1';
  static const page2Part1 = '/page2Part1';
  static const loginsignupPage1Part1 = '/loginsignupPage1Part1';
}
