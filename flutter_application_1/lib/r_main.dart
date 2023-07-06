//r_main.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/r_page_auth.dart';
import 'package:flutter_application_1/provider/r_provider_homeinhome.dart';
import 'package:flutter_application_1/router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ProviderHomeinHome()),
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteCustom.onGenerateRoute,
      home: PageAuth(),
    );
  }
}
