import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_quiz/controllers/question_controller.dart';
import 'package:flutter_application_1/app_quiz/screens/welcome_screen.dart';
import 'package:get/get.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/img6.jpg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Score",
                style: TextStyle(color: Colors.amber, fontSize: 50),
              ),
              Text(
                "${_qnController.correctAns.round()}/${_qnController.questions.length}",
                style: const TextStyle(color: Colors.amber, fontSize: 40),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const WelcomeScreen()),
                      (Route<dynamic> route) => false);
                },
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    backgroundColor: const Color.fromARGB(255, 0, 197, 10),
                    elevation: 0),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "continue playing",
                    style: TextStyle(
                        fontSize: 35, color: Color.fromARGB(255, 238, 255, 5)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
