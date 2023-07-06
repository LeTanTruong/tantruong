//r6_router
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/r_page_auth.dart';
import 'package:flutter_application_1/pages/r_page_home.dart';
import 'package:flutter_application_1/pages/r_page_product.dart';
import 'package:page_transition/page_transition.dart';

class RouteCustom {
  static Route onGenerateRoute(RouteSettings settings) {
    ////4
    final args = settings.arguments as Map;
    switch (settings.name) {
      case RouterName.pageAuth:
        return MaterialPageRoute(builder: (context) {
          return const PageAuth();
        });
//////////////////////////////////////////////////////////////////////////////////////////////////
      case RouterName.pageHome:
        return PageTransition(
          child: PageHome(),
          type: PageTransitionType.fade,
        );

///////////////////////////////////////////////////////////////////////////////////////////////////
      case RouterName.pageProduct:
        if (args['overview'] != null) {
          if (args['poster_path'] != null) {
            if (args['original_title'] != null) {
              return PageTransition(
                child: PageProduct(
                  overview: args['overview'],
                  poster_path: args['poster_path'],
                  original_title: args['original_title'],
                ),
                type: PageTransitionType.fade,
              );
            }
          }
        }

        return PageTransition(
          child: PageProduct(),
          type: PageTransitionType.fade,
        );

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
  static const pageAuth = '/pageAuth';
  static const pageHome = '/pageHome';
  static const pageProduct = '/pageProduct';
} ////4
