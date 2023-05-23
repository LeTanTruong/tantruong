//app2 todolist app chính
import 'package:flutter/material.dart';

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
        leadingWidth: double.infinity,
        toolbarHeight: 100,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'TODOLIST-APP',
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 12, 12, 12),
                fontFamily: '.VnAristote',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Daily task',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 5, 5, 5),
                fontFamily: '.VnAristote',
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 35, right: 5),
            child: Container(
              width: 150,
              height: 15,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 248, 105, 9),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    30,
                  ),
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add Task',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      //fontFamily: AutofillHints.namePrefix,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 219, 203, 217),
          borderRadius: BorderRadius.all(
            Radius.circular(
              30,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //////Padding Study 1
              /////////Padding Study 1
              /////////Padding Study 1
              /////////Padding Study 1
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 50,
                        height: 160,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 243, 163, 125),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        alignment:
                            Alignment.center, //DN cho chữ nằm giữa container
                        child: const RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            "Study",
                            style: TextStyle(fontSize: 28, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: 30,
                        height: 160,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 243, 163, 125),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              20,
                            ),
                            bottomLeft: Radius.circular(
                              20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 10,
                      child: Container(
                        width: double.infinity,
                        height: 160,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 243, 206, 229),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(
                              20,
                            ),
                            topRight: Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 7,
                            right: 7,
                            left: 7,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Hoc tập và làm việc",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                              const Text(
                                "8 AM - 1 PM",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                              const Text(
                                "g g  g g  g  bea gv er b rthb tr hb t yn r e  vgber gv er gbv erb  rth bt rhb  4 ref gb vr   fb fd b f ",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              // SizedBox(
                              //   height: 60,
                              // ),

                              Row(
                                children: [
                                  //container huân chương
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 70,
                                      top: 60,
                                    ),
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.orange,
                                          offset: Offset(2, 2),
                                          blurRadius: 1, //độ nhòe
                                        )
                                      ],
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.workspace_premium,
                                      size: 25,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  //container đồng hồ
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                      top: 60,
                                    ),
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.yellow,
                                          offset: Offset(2, 2),
                                          blurRadius: 1, //độ nhòe
                                        )
                                      ],
                                      color: Color.fromARGB(255, 253, 253, 253),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.browse_gallery,
                                      size: 25,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  //container cây bút
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                      top: 60,
                                    ),
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.green,
                                          offset: Offset(2, 2),
                                          blurRadius: 1, //độ nhòe
                                        )
                                      ],
                                      color: Color.fromARGB(255, 253, 253, 253),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.edit,
                                      size: 25,
                                      color: Colors.green,
                                    ),
                                  ),
                                  //container xọt rác
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                      top: 60,
                                    ),
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue,
                                          offset: Offset(2, 2),
                                          blurRadius: 1, //độ nhòe
                                        )
                                      ],
                                      color: Color.fromARGB(255, 248, 247, 247),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.delete_forever,
                                      size: 25,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //////padding Study 2
              /////////padding Study 2
              /////////padding Study 2
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 50,
                        height: 160,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 84, 248, 62),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        alignment:
                            Alignment.center, //DN cho chữ nằm giữa container
                        child: const RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            "Study",
                            style: TextStyle(fontSize: 28, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: 30,
                        height: 160,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 84, 248, 62),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              20,
                            ),
                            bottomLeft: Radius.circular(
                              20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 10,
                      child: Container(
                        width: double.infinity,
                        height: 160,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 97, 243, 163),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(
                              20,
                            ),
                            topRight: Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 7,
                            right: 7,
                            left: 7,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Hoc tập và làm việc",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                              const Text(
                                "8 AM - 1 PM",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                              const Text(
                                "g g  g g  g  bea gv er b rthb tr hb t yn r e  vgber gv er gbv erb  rth bt rhb  4 ref gb vr   fb fd b f ",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              // SizedBox(
                              //   height: 60,
                              // ),

                              Row(
                                children: [
                                  //container huân chương
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 70,
                                      top: 60,
                                    ),
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.orange,
                                          offset: Offset(2, 2),
                                          blurRadius: 1, //độ nhòe
                                        )
                                      ],
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.workspace_premium,
                                      size: 25,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  //container đồng hồ
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                      top: 60,
                                    ),
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.yellow,
                                          offset: Offset(2, 2),
                                          blurRadius: 1, //độ nhòe
                                        )
                                      ],
                                      color: Color.fromARGB(255, 253, 253, 253),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.browse_gallery,
                                      size: 25,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  //container cây bút
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                      top: 60,
                                    ),
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.green,
                                          offset: Offset(2, 2),
                                          blurRadius: 1, //độ nhòe
                                        )
                                      ],
                                      color: Color.fromARGB(255, 253, 253, 253),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.edit,
                                      size: 25,
                                      color: Colors.green,
                                    ),
                                  ),
                                  //container xọt rác
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                      top: 60,
                                    ),
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue,
                                          offset: Offset(2, 2),
                                          blurRadius: 1, //độ nhòe
                                        )
                                      ],
                                      color: Color.fromARGB(255, 248, 247, 247),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.delete_forever,
                                      size: 25,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //////padding Study 3
              /////////padding Study 3
              /////////padding Study 3
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 50,
                        height: 160,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 236, 83, 224),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        alignment:
                            Alignment.center, //DN cho chữ nằm giữa container
                        child: const RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            "Study",
                            style: TextStyle(fontSize: 28, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: 30,
                        height: 160,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 236, 83, 224),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              20,
                            ),
                            bottomLeft: Radius.circular(
                              20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 10,
                      child: Container(
                        width: double.infinity,
                        height: 160,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 253, 87, 226),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(
                              20,
                            ),
                            topRight: Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 7,
                            right: 7,
                            left: 7,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Hoc tập và làm việc",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                              const Text(
                                "8 AM - 1 PM",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                              const Text(
                                "g g  g g  g  bea gv er b rthb tr hb t yn r e  vgber gv er gbv erb  rth bt rhb  4 ref gb vr   fb fd b f ",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              // SizedBox(
                              //   height: 60,
                              // ),

                              Row(
                                children: [
                                  //container huân chương
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 70,
                                      top: 60,
                                    ),
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.orange,
                                          offset: Offset(2, 2),
                                          blurRadius: 1, //độ nhòe
                                        )
                                      ],
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.workspace_premium,
                                      size: 25,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  //container đồng hồ
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                      top: 60,
                                    ),
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.yellow,
                                          offset: Offset(2, 2),
                                          blurRadius: 1, //độ nhòe
                                        )
                                      ],
                                      color: Color.fromARGB(255, 253, 253, 253),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.browse_gallery,
                                      size: 25,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  //container cây bút
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                      top: 60,
                                    ),
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.green,
                                          offset: Offset(2, 2),
                                          blurRadius: 1, //độ nhòe
                                        )
                                      ],
                                      color: Color.fromARGB(255, 253, 253, 253),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.edit,
                                      size: 25,
                                      color: Colors.green,
                                    ),
                                  ),
                                  //container xọt rác
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                      top: 60,
                                    ),
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue,
                                          offset: Offset(2, 2),
                                          blurRadius: 1, //độ nhòe
                                        )
                                      ],
                                      color: Color.fromARGB(255, 248, 247, 247),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.delete_forever,
                                      size: 25,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              //////padding Study 4
              /////////padding Study 4
              /////////padding Study 4
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 50,
                        height: 160,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 243, 163, 125),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        alignment:
                            Alignment.center, //DN cho chữ nằm giữa container
                        child: const RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            "Study",
                            style: TextStyle(fontSize: 28, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: 30,
                        height: 160,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 243, 163, 125),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              20,
                            ),
                            bottomLeft: Radius.circular(
                              20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 10,
                      child: Container(
                        width: double.infinity,
                        height: 160,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 243, 206, 229),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(
                              20,
                            ),
                            topRight: Radius.circular(
                              20,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 7,
                            right: 7,
                            left: 7,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Hoc tập và làm việc",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                              const Text(
                                "8 AM - 1 PM",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                              const Text(
                                "g g  g g  g  bea gv er b rthb tr hb t yn r e  vgber gv er gbv erb  rth bt rhb  4 ref gb vr   fb fd b f ",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              // SizedBox(
                              //   height: 60,
                              // ),

                              Row(
                                children: [
                                  //container huân chương
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 70,
                                      top: 60,
                                    ),
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.orange,
                                          offset: Offset(2, 2),
                                          blurRadius: 1, //độ nhòe
                                        )
                                      ],
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.workspace_premium,
                                      size: 25,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  //container đồng hồ
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                      top: 60,
                                    ),
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.yellow,
                                          offset: Offset(2, 2),
                                          blurRadius: 1, //độ nhòe
                                        )
                                      ],
                                      color: Color.fromARGB(255, 253, 253, 253),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.browse_gallery,
                                      size: 25,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  //container cây bút
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                      top: 60,
                                    ),
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.green,
                                          offset: Offset(2, 2),
                                          blurRadius: 1, //độ nhòe
                                        )
                                      ],
                                      color: Color.fromARGB(255, 253, 253, 253),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.edit,
                                      size: 25,
                                      color: Colors.green,
                                    ),
                                  ),
                                  //container xọt rác
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                      top: 60,
                                    ),
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue,
                                          offset: Offset(2, 2),
                                          blurRadius: 1, //độ nhòe
                                        )
                                      ],
                                      color: Color.fromARGB(255, 248, 247, 247),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          15,
                                        ),
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.delete_forever,
                                      size: 25,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
//////padding Study 4
              /////////padding Study 4
              /////////padding Study 4
            ],
          ),
        ),
      ),
    );
  }
}
