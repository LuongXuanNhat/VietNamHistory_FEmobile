import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../common/content_area.dart';
import '../start_quiz/quiz_controller.dart';
import 'answer_card.dart';
import 'countdown_timer.dart';
import 'custom_app_bar.dart';
import 'mainbutton.dart';
import 'quiz_number_card.dart';
import 'screen_background_decoration.dart';

class QuizOverViewScreen extends GetView<QuizController> {
  const QuizOverViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: controller.completedQuiz,
      ),
      body: BackgroundDecoration(
        child: Column(
          children: [
            Expanded(
              child: ContentArea(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CountdownTimer(
                          time: '',
                          color: Colors.white,
                        ),
                        Obx(
                          () => Text(
                            '${controller.time} phút',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                        child: GridView.builder(
                            itemCount: controller.allQuestions.length,
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:
                                        MediaQuery.of(context).size.width ~/ 75,
                                    childAspectRatio: 1,
                                    crossAxisSpacing: 8,
                                    mainAxisSpacing: 8),
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (_, index) {
                              AnswerStatus? answerStatus;
                              if (controller
                                      .allQuestions[index].selectedAnswer !=
                                  null) {
                                answerStatus = AnswerStatus.answered;
                              }
                              return QuizNumberCard(
                                index: index + 1,
                                status: answerStatus,
                                onTap: () {
                                  controller.jumpToQuestion(index);
                                },
                              );
                            }))
                  ],
                ),
              ),
            ),
            ColoredBox(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: MainButton(
                  onTap: () {
                    controller.complete();
                  },
                  title: 'Hoàn thành',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
