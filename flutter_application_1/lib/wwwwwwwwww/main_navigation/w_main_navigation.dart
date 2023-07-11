import 'package:flutter/material.dart';
import 'package:flutter_application_1/wwwwwwwwww/pages/w_page_auth.dart';
import 'package:flutter_application_1/wwwwwwwwww/pages/w_page_home.dart';
import 'package:flutter_application_1/wwwwwwwwww/provider/w_provider_auth.dart';
import 'package:flutter_application_1/wwwwwwwwww/w_main.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MainNavigation extends StatelessWidget {
  //bool isLogin = false;
  MainNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
        //!isLogin ? PageUath() : PageHome();
        StreamBuilder(
      stream: context.read<ProviderAuth>().isLoginStream,
      initialData: false,
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.data) {
          return MyApp();
        } else {
          return PageAuth();
        }
      },
    );
  }
}
