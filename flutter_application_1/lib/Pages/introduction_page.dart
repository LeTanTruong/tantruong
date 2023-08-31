import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/page_auth/login_page.dart';
import 'package:flutter_application_1/constants.dart';

class IntroductionPage extends StatefulWidget {
  static const routerName = "/IntroductionPage.routerName";
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  late PageController _pageController;
  int active = 0;
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            PageView.builder(
              onPageChanged: (value) {
                ////6
                setState(() {
                  active = value;
                });
              },
              controller: _pageController,
              itemCount: dataList.length,
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
                                dataList[index]["image"],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Column(
                            children: [
                              const SizedBox(height: 50),
                              Opacity(
                                opacity: active == dataList.length - 1 ? 1 : 0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: ((_) => const LoginPage()),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                      side: const BorderSide(
                                          width: 2, color: Colors.black),
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30),
                                        ),
                                      ),
                                      minimumSize: const Size(
                                        200,
                                        50,
                                      ),
                                      backgroundColor: kAppBar,
                                      elevation: 0),
                                  child: isLoading
                                      ? const Center(
                                          child: CircularProgressIndicator(
                                            color: Colors.white,
                                          ),
                                        )
                                      : const Text(
                                          "Login",
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white),
                                        ),
                                ),
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
                    opacity: active == dataList.length - 1 ? 0 : 1,
                    child: InkWell(
                      onTap: () {
                        _pageController.animateToPage(dataList.length - 1,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linear);
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(width: 50),
                  Row(
                    children: List.generate(
                      dataList.length,
                      (index) {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          width: active == index ? 35 : 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: active == index ? kAppBar : Colors.blue,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 50),
                ],
              ),
            ),
////
          ],
        ),
      ),
    );
  }
}

const List dataList = [
  {
    "image": "assets/images/storyset1.png",
  },
  {
    "image": "assets/images/storyset2.png",
  },
  {
    "image": "assets/images/storyset3.png",
  },
];
