import 'package:flutter/material.dart';
import 'package:flutter_application_1/wwwwwwwwww/pages/w_page_auth.dart';
import 'package:flutter_application_1/wwwwwwwwww/pages/w_page_category.dart';
import 'package:flutter_application_1/wwwwwwwwww/pages/w_page_home.dart';
import 'package:flutter_application_1/wwwwwwwwww/pages/w_page_introduction.dart';
import 'package:flutter_application_1/wwwwwwwwww/pages/w_page_register.dart';
import 'package:flutter_application_1/wwwwwwwwww/provider/w_auth_repository.dart';
import 'package:flutter_application_1/wwwwwwwwww/provider/w_provider_auth.dart';
import 'package:flutter_application_1/wwwwwwwwww/provider/w_provider_home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      //ChangeNotifierProvider(create: (_) => ProviderRepositoryHome()),
      ChangeNotifierProvider(create: (_) => ProviderHome()),
      ChangeNotifierProvider(create: (_) => ProviderAuth(AuthRepository())),
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: PageHome(),
      initialRoute: "PageIntroduction.routerName", ////3
      routes: {
        PageIntroduction.routerName: ((context) => const PageIntroduction()),
        PageAuth.routerName: ((context) => PageAuth()),
        PageHome.routerName: ((context) => const PageHome()),
        PageCategory.routerName: ((context) => const PageCategory()),
        PageRegister.routerName: ((context) => const PageRegister()),
      },
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////
