//giao diện 9
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Training',
              style: TextStyle(
                color: Color.fromARGB(255, 3, 3, 3),
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  flex: 4,
                  child: Text(
                    'Vel of  fb dzsb fzxd',
                    style: TextStyle(
                      color: Color.fromARGB(255, 8, 8, 8),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'conga tre',
                    style: GoogleFonts.dancingScript(
                        fontSize: 30,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Icon(
                  Icons.arrow_right_alt,
                  size: 30,
                  color: Color.fromARGB(255, 8, 6, 5),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    7,
                  ),
                  topRight: Radius.circular(
                    27,
                  ),
                  bottomLeft: Radius.circular(
                    17,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'conga tre111',
                      style: GoogleFonts.dancingScript(
                          fontSize: 30,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        right: 80,
                      ),
                      child: Text(
                        'fd bvf gb b fcxg dfgcfdgfg acdsv df v fdb x  b dfb x',
                        style: TextStyle(
                          color: Color.fromARGB(255, 253, 253, 253),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.login,
                          size: 30,
                          color: Color.fromARGB(255, 253, 253, 253),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 5,
                          ),

                          ///dancingScript
                          child: Text(
                            'ZendVn',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 7, 23, 255),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 190,
                        ),
                        Container(
                          width: 40,
                          height: 30,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 97, 95, 95),
                                offset: Offset(2, 2),
                                blurRadius: 1, //độ nhòe
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: const Icon(
                            Icons.settings,
                            size: 20,
                            color: Color.fromARGB(255, 231, 247, 8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Quialfv dfb df bfbd',
                    style: TextStyle(
                      color: Color.fromARGB(255, 12, 11, 11),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView(
                scrollDirection: Axis.vertical,
                //cuộn thẳng đứng GridView
                shrinkWrap: true,
                //physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 1 / 1.2,
                ),
                children: List.generate(
                  10,
                  (index) => Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 85, 83, 83),
                          offset: Offset(-2, -2),
                          blurRadius: 1, //độ nhòe
                        )
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          20,
                        ),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 171, 227, 231),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                      child: const Text(
                        'Quialfv dfb df bfbdbf gb fgb  fgb f b tr b fb d bfd g rs rt r s t rt ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 12, 11, 11),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center, //cho chữ nằm giữa
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
