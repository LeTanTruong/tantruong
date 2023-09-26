import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_quiz/controllers/question_controller.dart';
import 'package:flutter_application_1/app_quiz/screens/quiz/components/body.dart';
import 'package:get/get.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return const Scaffold(
      body: Body(),
    );
  }
}
