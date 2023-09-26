import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/app_quiz/controllers/question_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        width: double.infinity,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF3F4768), width: 2),
          borderRadius: BorderRadius.circular(50),
        ),
        child: GetBuilder<QuestionController>(
          init: QuestionController(),
          builder: (controller) {
            return Stack(
              children: [
                //// from 0 to 1 it takes 60s
                LayoutBuilder(
                  builder: (context, constraints) => Container(
                    clipBehavior: Clip.hardEdge,
                    width: constraints.maxWidth * controller.animation.value,
                    decoration: BoxDecoration(
                      //gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 49, 255, 22),
                          Color.fromARGB(255, 7, 238, 255),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${(controller.animation.value * 60).round()} sec",
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        //SvgPicture.asset("assets/icons/clock.svg"),
                        const Icon(Icons.lock_clock),
                      ],
                    ),
                  ),
                ),
                ////\\\\ from 0 to 1 it takes 60s
              ],
            );
          },
        ),
      ),
    );
  }
}
