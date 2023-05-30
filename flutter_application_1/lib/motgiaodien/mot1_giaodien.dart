//bài cộng trừ provider consumer
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/motgiaodien/mot2_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Mot2Provider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override //////@@@@@@@@
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ///////// read json
  void loadJsonData() async {
    var jsonText = await rootBundle.loadString("assets/json/giaodien.json");
    print(jsonText);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadJsonData();
  }

///////////read json
  @override ///////@@@@@@@
  Widget build(BuildContext context) {
    print('MyApp');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bài tập 10111', /////doạn chữ
              style: GoogleFonts.robotoSlab(
                //Roboto Slab
                fontSize: 20,
                color: const Color.fromARGB(255, 243, 33, 33),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Bài tập 10101', /////doạn chữ
              style: GoogleFonts.dancingScript(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  ///nút nhấn đoạn chữ
                  onPressed: () {
                    Provider.of<Mot2Provider>(context, listen: false).reduce();
                  },
                  child: const Text(
                    //////dấu trừ trừ trừ
                    '-',
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 3, 3),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Consumer<Mot2Provider>(
                  builder: (context, value, child) {
                    return Text(
                      ///////số 0 0 0 0 0
                      Provider.of<Mot2Provider>(context).number.toString(),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 3, 3, 3),
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    );
                  },
                ),
                ElevatedButton(
                  ///nút nhấn đoạn chữ
                  onPressed: () {
                    Provider.of<Mot2Provider>(context, listen: false)
                        .increment();
                  },
                  child: const Text(
                    /////dấu cộng cộng cộng
                    '+',
                    style: TextStyle(
                      color: Color.fromARGB(255, 3, 3, 3),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
