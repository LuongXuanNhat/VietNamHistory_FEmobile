import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../enums/status_type.dart';
import '../../../models/multiplechoice/response/detail_quiz_response.dart';
import '../../../route_generator.dart';
import '../widget/dialogs.dart';
import 'quiz_papaers_controller.dart';

class QuizController extends GetxController {
  final loadingStatus = StatusType.loading.obs;
  final allQuestions = <Quiz>[];
  late DetailQuizResponse quizPaperModel;
  late DetailQuizResponse detailquiz1;
  Timer? _timer;
  int remainSeconds = 1;
  final time = '00:00'.obs;

  @override
  void onClose() {
    if (_timer != null) {
      _timer!.cancel();
    }
    super.onClose();
  }

  Future<bool> onExitOfQuiz() async {
    return Dialogs.quizEndDialog();
  }

  void _startTimer(int seconds) {
    const duration = Duration(seconds: 1);
    remainSeconds = seconds;
    _timer = Timer.periodic(
      duration,
      (Timer timer) {
        if (remainSeconds == 0) {
          timer.cancel();
          complete();
        } else {
          int minutes = remainSeconds ~/ 60;
          int seconds = (remainSeconds % 60);
          time.value =
              "${minutes.toString().padLeft(2, "0")}:${seconds.toString().padLeft(2, "0")}";
          remainSeconds--;
        }
      },
    );
  }

  void loadData(DetailQuizResponse detailquiz) async {
    quizPaperModel = detailquiz;
    detailquiz1 = detailquiz;
    loadingStatus.value = StatusType.loading;
    if (detailquiz.resultObj.quizs.isNotEmpty) {
      allQuestions.assignAll(detailquiz.resultObj.quizs);
      currentQuestion.value = detailquiz.resultObj.quizs[0];
      _startTimer(detailquiz.resultObj.workTime * 60);
      loadingStatus.value = StatusType.complete;
    } else {
      loadingStatus.value = StatusType.noReult;
    }
  }

  Rxn<Quiz> currentQuestion = Rxn<Quiz>();
  final questionIndex = 0.obs; //_curruntQuestionIndex

  bool get isFirstQuestion => questionIndex.value > 0;

  bool get islastQuestion => questionIndex.value >= allQuestions.length - 1;

  void nextQuestion() {
    if (questionIndex.value >= allQuestions.length - 1) return;
    questionIndex.value++;
    currentQuestion.value = allQuestions[questionIndex.value];
  }

  void prevQuestion() {
    if (questionIndex.value <= 0) {
      return;
    }
    questionIndex.value--;
    currentQuestion.value = allQuestions[questionIndex.value];
  }

  void jumpToQuestion(int index, {bool isGoBack = true}) {
    questionIndex.value = index;
    currentQuestion.value = allQuestions[index];
    if (isGoBack) {
      Get.back();
    }
  }

  void selectAnswer(String? answer) {
    currentQuestion.value!.selectedAnswer = answer;
    update(['answers_list', 'answers_review_list']);
  }

  String get completedQuiz {
    final answeredQuestionCount = allQuestions
        .where((question) => question.selectedAnswer != null)
        .toList()
        .length;
    return '$answeredQuestionCount trong số ${allQuestions.length} câu trả lời';
  }

  void complete() {
    _timer!.cancel();
    navigator!.pushNamedAndRemoveUntil(
        RouteGenerator.resultQuizScreen, (route) => false);
  }

  void tryAgain() {
    Get.put(QuizPaperController());
    Get.find<QuizPaperController>()
        .navigatoQuestions(id: detailquiz1.resultObj.id, isTryAgain: true);
  }

  void navigateToHome() {
    _timer!.cancel();
    navigator!
        .pushNamedAndRemoveUntil(RouteGenerator.mainScreen, (route) => false);
  }
}
