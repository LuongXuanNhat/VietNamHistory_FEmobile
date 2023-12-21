import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../common/ui_helpers.dart';
import '../../../get_it.dart';
import '../../../models/user/user_pres.dart';
import '../../../repositories/data_repository.dart';
import '../../../route_generator.dart';
import '../start_quiz/quiz_controller.dart';

extension QuizeResult on QuizController {
  int get correctQuestionCount => allQuestions
      .where((question) =>
          question.selectedAnswer ==
          question.quizAnswers.firstWhere((element) => element.isCorrect).id)
      .toList()
      .length;

  String get correctAnsweredQuestions {
    return '$correctQuestionCount trên số ${allQuestions.length} câu trả lời đúng';
  }

  String get points {
    var points = (correctQuestionCount / allQuestions.length) * 10;
    return points.toStringAsFixed(2);
  }

  Future<void> saveQuizResults() async {
    final dataRepository = getIt<DataRepository>();
    final userData = await UserPreferences.getUser();
    final soThuc = double.parse(points);
    final response = await dataRepository.historyExame(
        multipleChoipleId: quizPaperModel.resultObj.id,
        userId: userData['id'] ?? '',
        scores: soThuc.toInt(),
        completionTime: quizPaperModel.resultObj.workTime - remainSeconds,
        starDate: DateTime.now().toIso8601String());
    if (response.isSuccessed == true) {
      navigator?.pushNamedAndRemoveUntil(
          RouteGenerator.mainScreen,
          arguments: {'currentIndex': 2},
          (route) => false);
    } else {
      UIHelpers.showSnackBar(message: 'Có lỗi xảy ra, vui lòng thử lại');
    }
  }
}
