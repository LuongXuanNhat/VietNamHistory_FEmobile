import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../common/content_area.dart';
import '../../../common/ui_parameters.dart';
import '../../../models/multiplechoice/response/detail_quiz_response.dart';
import '../../../route_generator.dart';
import '../start_quiz/quiz_controller.dart';
import '../widget/answer_card.dart';
import '../widget/custom_app_bar.dart';
import '../widget/mainbutton.dart';
import '../widget/quiz_number_card.dart';
import '../widget/screen_background_decoration.dart';
import 'quiz_result_extention_qc.dart';

class Resultcreen extends GetView<QuizController> {
  const Resultcreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundDecoration(
          child: Column(
        children: [
          CustomAppBar(
            leading: const SizedBox(
              height: 56,
            ),
            title: controller.correctAnsweredQuestions,
          ),
          Expanded(
            child: ContentArea(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/bulb.svg'),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 5),
                  child: Text(
                    'Chúc mừng',
                    style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.white)
                        .copyWith(color: Colors.black),
                  ),
                ),
                Text(
                  'Tổng số điểm của bạn là ${controller.points}/10',
                  style: const TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Nhấn vào ô bên dưới để xem câu trả lời đúng',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 25,
                ),
                Expanded(
                    child: GridView.builder(
                        itemCount: controller.allQuestions.length,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount:
                                MediaQuery.of(context).size.width ~/ 75,
                            childAspectRatio: 1,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8),
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (_, index) {
                          final question = controller.allQuestions[index];

                          AnswerStatus status = AnswerStatus.notanswered;

                          final selectedAnswer = question.selectedAnswer;
                          final correctAnswer = question.quizAnswers
                              .firstWhere((element) => element.isCorrect)
                              .id;

                          if (selectedAnswer == correctAnswer) {
                            status = AnswerStatus.correct;
                          } else if (question.selectedAnswer == null) {
                            status = AnswerStatus.wrong;
                          } else {
                            status = AnswerStatus.wrong;
                          }

                          return QuizNumberCard(
                            index: index + 1,
                            status: status,
                            onTap: () {
                              controller.jumpToQuestion(index, isGoBack: false);
                              navigator!
                                  .pushNamed(RouteGenerator.answerCheckScreen);
                            },
                          );
                        }))
              ],
            )),
          ),
          ColoredBox(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Padding(
                padding: UIParameters.screenPadding,
                child: Row(
                  children: [
                    Expanded(
                        child: MainButton(
                      color: Colors.blueGrey,
                      onTap: () {
                        controller.tryAgain();
                      },
                      title: 'Làm lại',
                    )),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: MainButton(
                      onTap: () {
                        controller.saveQuizResults();
                      },
                      title: 'Về trang chủ',
                    ))
                  ],
                )),
          )
        ],
      )),
    );
  }
}
