//home\f9_home_product3_page.dart
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProduct3 extends StatefulWidget {
  static const RouterName = '/homeProduct3';
  const HomeProduct3({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeProduct3> createState() => _HomeProduct3State();
}

class _HomeProduct3State extends State<HomeProduct3> {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arg =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    //  print(arg);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          arg['title'],
        ),
      ),
      body: WebViewWidget(
        ////1
        controller: WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(const Color(0x00000000))
          ..setNavigationDelegate(
            NavigationDelegate(
              onProgress: (int progress) {
                // Update loading bar.
              },
              onPageStarted: (String url) {},
              onPageFinished: (String url) {},
              onWebResourceError: (WebResourceError error) {},
              onNavigationRequest: (NavigationRequest request) {
                if (request.url.startsWith('')) {
                  return NavigationDecision.prevent;
                }
                return NavigationDecision.navigate;
              },
            ),
          )
          ..loadRequest(Uri.parse('https://www.24h.com.vn/')),
      ),
    );
  }
}






// Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               width: double.infinity,
//               height: 300,
//               decoration: BoxDecoration(
//                   color: Colors.amber,
//                   borderRadius: BorderRadius.all(Radius.circular(20))),
//             ),
//             Text(
//               arg['description'],
//               style: TextStyle(fontSize: 20, color: Colors.blue),
//             ),
//           ],
//         ),
//       ),