import 'package:flutter/material.dart';
import 'package:flutter_application_1/wwwwwwwwww/pages/w_page_auth.dart';

class PageIntroduction extends StatefulWidget {
  static const routerName = "PageIntroduction.routerName";
  const PageIntroduction({
    super.key,
  });

  @override
  State<PageIntroduction> createState() => _PageIntroductionState();
}

class _PageIntroductionState extends State<PageIntroduction> {
  late PageController _pageController;
  int active = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  active = value;
                });
              },
              controller: _pageController,
              itemCount: datawlist.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                datawlist[index]["image"]!,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          //color: Colors.blue,
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Column(
                            children: [
                              Text(
                                datawlist[index]["name"]!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.amber),
                              ),
                              Text(
                                datawlist[index]["description"]!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Positioned(
              bottom: 60,
              child: Row(
                children: [
                  Opacity(
                    opacity: active == datawlist.length - 1 ? 0 : 1,
                    child: InkWell(
                      onTap: () {
                        _pageController.animateToPage(datawlist.length - 1,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.linear);
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.orange),
                      ),
                    ),
                  ),
                  SizedBox(width: 50),
                  Row(
                    children: List.generate(
                      datawlist.length,
                      (index) {
                        return AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                          width: active == index ? 35 : 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: active == index ? Colors.amber : Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 50),
                  Opacity(
                    opacity: active == datawlist.length - 1 ? 1 : 0,
                    child: InkWell(
                      onTap: (() {
                        Navigator.pushNamed(
                          context, PageAuth.routerName,
                          //arguments: {'title: index'}
                        );
                      }),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List datawlist = [
  ///<Map<String, String>>
  {
    "image": "assets/images/storyset1.png",
    "name": "flutter",
    "description":
        "de111 f redvg redgb r st gbrt fb r bt f bfr db rts br hb r shb t btf btr b tr bt rb  fb rt b e rg ver v er fvre gv t g thb t b rb  "
  },
  {
    "image": "assets/images/storyset2.png",
    "name": "volifber",
    "description":
        "de212 f redvg redgb r st gbrt fb r bt f bfr db rts br hb r shb t btf btr b tr bt rb  fb rt b e rg ver v er fvre gv t g thb t b rb  "
  },
  {
    "image": "assets/images/storyset3.png",
    "name": "rammus",
    "description":
        "de334 f redvg redgb r st gbrt fb r bt f bfr db rts br hb r shb t btf btr b tr bt rb  fb rt b e rg ver v er fvre gv t g thb t b rb  "
  },
];
