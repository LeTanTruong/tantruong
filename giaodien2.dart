//app1 giao dien 10
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
      body: Container(
        width: double.infinity,
        height: double.infinity,

        //decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     fit: BoxFit.cover,
        //     image.Ne
        //   ),
        //),
        color: const Color.fromARGB(255, 33, 243, 243),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Qui iste dolor',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Englishdf   dolor dbvdb  sb rfb rd b fd rbfrdsb bdf dbrtfsbrts gbfgtrnb rtfdbdfbe rber gve rg bv v  v.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 420,
              ),
              Container(
                width: 200,
                height: 75,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 238, 112, 154),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20,
                    ),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Start',
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text(
                    'Officlis aperiamfdbfgsb b fb rt fb rtb  s rt b t b ty nb  ty n ty nt e r srefv3 ewf 3 4f 4g f 45g 5h g5rhgb5rg er g 4g 45 g4 g 455 g 45rg',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
