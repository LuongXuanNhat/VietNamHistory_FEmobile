import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/storage/app_prefs.dart';
import '../../../common/ui_helpers.dart';
import '../../../get_it.dart';
import '../../../models/history_exam/response/list_history_myexam.dart';
import '../../../models/multiplechoice/response/multiple_choice_response.dart';
import '../../../models/multiplechoice/response/multiple_choice_response.dart'
    as item;

import '../../../repositories/data_repository.dart';

part 'quiz_state.dart';
part 'quiz_cubit.freezed.dart';

class QuizCubit extends Cubit<QuizState> {
  final appPref = getIt<AppPref>();
  final dataRepository = getIt<DataRepository>();
  QuizCubit() : super(const QuizState.initial(data: QuizStateData()));

  Future<void> listMultipleChoice() async {
    try {
      UIHelpers.showLoading();
      final response = await dataRepository.listMultipleChoice();
      if (response.isSuccessed == true) {
        emit(QuizState.listQuiz(
            data: state.data.copyWith(
          multipleChoiceResponse: response,
          listSearch: response,
        )));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> listHistoryExam() async {
    try {
      UIHelpers.showLoading();
      final response = await dataRepository.getMyExamHistory();
      if (response.isSuccessed == true) {
        emit(QuizState.listHistoryExam(
            data: state.data.copyWith(listHistoryMyExam: response)));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> searchMultipleChoice({required String searchText}) async {
    List<item.ResultObj> listQuestion = [...?state.data.listSearch!.resultObj];
    if (searchText.isEmpty) {
      emit(QuizState.listQuiz(
          data: state.data.copyWith(
              multipleChoiceResponse:
                  MultipleChoiceResponse(resultObj: listQuestion))));
    } else {
      final searchTEXT = searchText.toLowerCase();

      final result = listQuestion
          .where((element) => element.title.toLowerCase().contains(searchTEXT))
          .toList();
      emit(QuizState.listQuiz(
          data: state.data.copyWith(
              multipleChoiceResponse:
                  MultipleChoiceResponse(resultObj: result))));
    }
  }
}
