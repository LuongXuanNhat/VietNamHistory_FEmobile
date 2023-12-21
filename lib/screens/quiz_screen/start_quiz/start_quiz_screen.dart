import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../common/content_area.dart';
import '../../../enums/status_type.dart';
import '../../../models/multiplechoice/response/detail_quiz_response.dart';
import '../../../route_generator.dart';
import '../widget/answer_card.dart';
import '../widget/countdown_timer.dart';
import '../widget/custom_app_bar.dart';
import '../widget/mainbutton.dart';
import '../widget/screen_background_decoration.dart';

import 'quiz_controller.dart';

class StartQuizzScreen extends GetView<QuizController> {
  const StartQuizzScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: controller.onExitOfQuiz,
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: CustomAppBar(
            leading: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: const ShapeDecoration(
                  shape: StadiumBorder(
                      side: BorderSide(color: Colors.white, width: 1)),
                ),
                child: Obx(
                  () => CountdownTimer(
                      time: controller.time.value, color: Colors.white),
                )),
            showActionIcon: true,
            titleWidget: Obx(
              () => Text(
                  'Câu ${(controller.questionIndex.value + 1).toString().padLeft(2, '0')}',
                  style: const TextStyle(
                      fontFamily: "Epilogue",
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w700)),
            ),
          ),
          body: BackgroundDecoration(
              child: Obx(() => Column(
                    children: [
                      if (controller.loadingStatus.value == StatusType.loading)
                        const LinearProgressIndicator(),
                      if (controller.loadingStatus.value == StatusType.complete)
                        Expanded(
                          child: ContentArea(
                              child: SingleChildScrollView(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Text(controller.currentQuestion.value!.content,
                                    style: const TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700)),
                                GetBuilder<QuizController>(
                                    id: 'answers_list',
                                    builder: (context) {
                                      return ListView.separated(
                                        itemCount: controller.currentQuestion
                                            .value!.quizAnswers.length,
                                        shrinkWrap: true,
                                        padding: const EdgeInsets.only(top: 25),
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        separatorBuilder:
                                            (BuildContext context, int index) {
                                          return const SizedBox(
                                            height: 10,
                                          );
                                        },
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          final answer = controller
                                              .currentQuestion
                                              .value!
                                              .quizAnswers[index];
                                          return AnswerCard(
                                            isSelected: answer.id ==
                                                controller.currentQuestion
                                                    .value!.selectedAnswer,
                                            onTap: () {
                                              controller
                                                  .selectAnswer(answer.id);
                                            },
                                            answer: answer.content,
                                          );
                                        },
                                      );
                                    }),
                              ],
                            ),
                          )),
                        ),
                      ColoredBox(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Row(
                            children: [
                              Visibility(
                                visible: controller.isFirstQuestion,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: SizedBox(
                                    height: 55,
                                    width: 55,
                                    child: MainButton(
                                      onTap: () {
                                        controller.prevQuestion();
                                      },
                                      child: const Icon(
                                        Icons.arrow_back_ios_new,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Obx(() => Visibility(
                                      visible: controller.loadingStatus.value ==
                                          StatusType.complete,
                                      child: MainButton(
                                        onTap: () {
                                          controller.islastQuestion
                                              ? navigator!.pushNamed(
                                                  RouteGenerator.quizOverView)
                                              : controller.nextQuestion();
                                        },
                                        title: controller.islastQuestion
                                            ? 'Hoàn thành'
                                            : 'Tiếp tục',
                                      ))))
                            ],
                          ),
                        ),
                      )
                    ],
                  )))),
    );
  }
}
