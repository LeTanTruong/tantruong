import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/bottom_navigation_bar_screen.dart';
import 'package:flutter_application_1/Pages/categorys/category_page.dart';
import 'package:flutter_application_1/Pages/Lists/List_Product_Special.dart';
import 'package:flutter_application_1/Pages/Lists/list_card_page.dart';
import 'package:flutter_application_1/Pages/homes/home_page.dart';
import 'package:flutter_application_1/Pages/homes/searchs/search_home.dart';
import 'package:flutter_application_1/Pages/products_detail/product_detail_page.dart';
import 'package:flutter_application_1/Pages/products_detail/product_detail_provider/product_detail_provider.dart';
import 'package:flutter_application_1/Pages/walks/walk_cart_buy_product.dart';
import 'package:flutter_application_1/Pages/walks/walk_cart_model.dart';
import 'package:flutter_application_1/Pages/walks/walk_details_product_page.dart';
import 'package:flutter_application_1/Pages/walks/walk_home_page.dart';
import 'package:flutter_application_1/Pages/introduction_page.dart';
import 'package:flutter_application_1/auth/page_auth/complete_profile_page.dart';
import 'package:flutter_application_1/auth/page_auth/forgot_password_page.dart';
import 'package:flutter_application_1/auth/page_auth/login_page.dart';
import 'package:flutter_application_1/auth/page_auth/sign_up_page.dart';
import 'package:flutter_application_1/pages/homes/widgets_drawer/drawer_screen.dart';
import 'package:flutter_application_1/providers/cart_provider.dart';
import 'package:flutter_application_1/providers/category_provider.dart';
import 'package:flutter_application_1/providers/order_provider.dart';
import 'package:flutter_application_1/providers/product_provider.dart';
import 'package:flutter_application_1/providers/slider_provider.dart';
import 'package:provider/provider.dart';

void main() {
  ////HttpOverrides
  HttpOverrides.global = MyHttpOverrides();
  ////HttpOverrides\\\\
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SliderProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CategoryProvider(),
        ),
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => OrderProvider()),
        ChangeNotifierProvider(create: (_) => WalkCartModel()),
        ChangeNotifierProvider(create: (_) => ProductDetailProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: IntroductionPage.routerName,
        routes: {
          HomePage.routerName: ((context) => const HomePage()),
          CategoryPage.routerName: ((context) => const CategoryPage()),
          ProductDetailPage.routerName: ((context) =>
              const ProductDetailPage()),
          IntroductionPage.routerName: ((context) => const IntroductionPage()),
          DrawerScreen.routerName: ((context) => const DrawerScreen()),
          BottomNavigationBarScreen.routerName: ((context) =>
              const BottomNavigationBarScreen()),
          ListProductSpecial.routerName: ((context) =>
              const ListProductSpecial()),
          ListCartPage.routerName: ((context) => const ListCartPage()),
          SearchHome.routerName: ((context) => const SearchHome()),
          CompleteProfile.routerName: ((context) => const CompleteProfile()),
          LoginPage.routerName: ((context) => const LoginPage()),
          SignUpPage.routerName: ((context) => const SignUpPage()),
          ForgotPasswordPage.routerName: ((context) =>
              const ForgotPasswordPage()),
          WalkHomePage.routerName: ((context) => const WalkHomePage()),
          WalkCartBuyProduct.routerName: ((context) =>
              const WalkCartBuyProduct()),
          WalkDetailsProductPage.routerName: ((context) =>
              const WalkDetailsProductPage()),
        },
      ),
    );
  }
}

////MyHttpOverrides
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
