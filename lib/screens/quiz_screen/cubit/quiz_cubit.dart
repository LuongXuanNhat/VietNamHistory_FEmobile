import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/storage/app_prefs.dart';
import '../../../common/ui_helpers.dart';
import '../../../get_it.dart';
import '../../../models/multiplechoice/response/multiple_choice_response.dart';
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
            data: state.data.copyWith(multipleChoiceResponse: response)));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
