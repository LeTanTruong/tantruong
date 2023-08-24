import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Bottom_Navigation_Bar_Screen.dart';
import 'package:flutter_application_1/Pages/categorys/categoryWidget/category.dart';
import 'package:flutter_application_1/Pages/Lists/List_Product_Special.dart';
import 'package:flutter_application_1/Pages/homes/card.dart';
import 'package:flutter_application_1/Pages/homes/home_category.dart';
import 'package:flutter_application_1/Pages/homes/home_page.dart';
import 'package:flutter_application_1/Pages/homes/searchs/search_home.dart';
import 'package:flutter_application_1/Pages/walks/cart_buy_product.dart';
import 'package:flutter_application_1/Pages/walks/cart_model.dart';
import 'package:flutter_application_1/Pages/walks/details_product_page.dart';
import 'package:flutter_application_1/Pages/walks/walk_home_page.dart';
import 'package:flutter_application_1/Pages/introduction_page.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/complete_profile_page.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/forgot_password_page.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/login_page.dart';
import 'package:flutter_application_1/auth/Page_auth/auth/sign_up_page.dart';
import 'package:flutter_application_1/providers/cart_provider.dart';
import 'package:flutter_application_1/providers/category_provider.dart';
import 'package:flutter_application_1/providers/order_provider.dart';
import 'package:flutter_application_1/providers/product_provider.dart';
import 'package:flutter_application_1/providers/slider_provider.dart';
import 'package:flutter_application_1/widgets/drawer_screen.dart';
import 'package:provider/provider.dart';

void main() {
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
        ChangeNotifierProvider(create: (_) => CartModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: IntroductionPage.routerName,
        routes: {
          HomePage.routerName: ((context) => HomePage()),
          CategoryPage.routerName: ((context) => CategoryPage()),
          IntroductionPage.routerName: ((context) => IntroductionPage()),
          HomeCategory.routerName: ((context) => HomeCategory()),
          DrawerScreen.routerName: ((context) => DrawerScreen()),
          BottomNavigationBarScreen.routerName: ((context) =>
              BottomNavigationBarScreen()),
          ////
          ListProductSpecial.routerName: ((context) => ListProductSpecial()),
          PageCard.routerName: ((context) => PageCard()),
          SearchHome.routerName: ((context) => SearchHome()),
          //PageListOrder.routerName: (context) => PageListOrder(),

          ////
          CompleteProfile.routerName: ((context) => const CompleteProfile()),
          LoginPage.routerName: ((context) => const LoginPage()),
          SignUpPage.routerName: ((context) => const SignUpPage()),
          ForgotPasswordPage.routerName: ((context) =>
              const ForgotPasswordPage()),
          WalkHomePage.routerName: ((context) => const WalkHomePage()),
          CartBuyProduct.routerName: ((context) => const CartBuyProduct()),
          DetailsProductPage.routerName: ((context) =>
              const DetailsProductPage()),
        },
      ),
    );
  }
}
