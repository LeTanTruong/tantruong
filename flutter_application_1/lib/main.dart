import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/auths/auth_page.dart';
import 'package:flutter_application_1/firebase_options/firebase_options.dart';
import 'package:flutter_application_1/pages/page_category.dart';
import 'package:flutter_application_1/pages/page_home.dart';
import 'package:flutter_application_1/pages/page_introduction.dart';
import 'package:flutter_application_1/pages/product_page.dart';
import 'package:flutter_application_1/provider/category_provider.dart';
import 'package:flutter_application_1/provider/provider_home.dart';
import 'package:flutter_application_1/drawers/drawer_home.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ProviderHome()),
      ChangeNotifierProvider(create: (_) => CategoryProvider()),
    ], child: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: PageHome(),
      initialRoute: "PageIntroduction.routerName",
      routes: {
        PageIntroduction.routerName: ((context) => PageIntroduction()),
        PageHome.routerName: ((context) => PageHome()),
        PageCategory.routerName: ((context) => PageCategory()),
        DrawerHome.routerName: ((context) => DrawerHome()),
        ProductPage.routerName: ((context) => ProductPage()),
        AuthPage.routerName: ((context) => AuthPage()),
      },
    );
  }
}
