import 'dart:developer';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../get_it.dart';
import '../../../models/multiplechoice/response/detail_quiz_response.dart';
import '../../../repositories/data_repository.dart';
import '../../../route_generator.dart';
import 'quiz_controller.dart';

class QuizPaperController extends GetxController {
  final _dataRepository = getIt<DataRepository>();
  final allPapers = <DetailQuizResponse>[].obs;
  final allPaperImages = <String>[].obs;

  Future<void> navigatoQuestions(
      {required String id, bool isTryAgain = false}) async {
    try {
      final response = await _dataRepository.detailQuizById(id: id);
      navigator!.pushNamedAndRemoveUntil(
        RouteGenerator.startQuizScreen,
        (route) => false,
      );
      final quizController = Get.put(QuizController());
      quizController.loadData(response);
      quizController.questionIndex.value = 0;
    } catch (e) {
      log(e.toString());
    }
  }
}
