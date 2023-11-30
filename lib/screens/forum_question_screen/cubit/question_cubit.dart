import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/storage/app_prefs.dart';
import '../../../common/ui_helpers.dart';
import '../../../get_it.dart';
import '../../../models/question/response/listquestionresponse.dart';
import '../../../models/question/response/questionresponse.dart';
import '../../../models/user/user_pres.dart';
import '../../../repositories/data_repository.dart';

part 'question_state.dart';
part 'question_cubit.freezed.dart';

class QuestionCubit extends Cubit<QuestionState> {
  final appPref = getIt<AppPref>();
  final dataRepository = getIt<DataRepository>();

  QuestionCubit()
      : super(const QuestionState.initial(data: QuestionStateData()));

  Future<void> getAllQuestion() async {
    try {
      UIHelpers.showLoading();
      final response = await dataRepository.getAllQuestion();
      if (response.isSuccessed == true) {
        emit(QuestionState.getAllQuestion(
            data: state.data.copyWith(listQuestionResponse: response)));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> loadUser() async {
    try {
      UIHelpers.showLoading();
      Map<String, String> userData = await UserPreferences.getUser();
      final response = await dataRepository.getImage();
      emit(QuestionState.loadImage(
          data: state.data.copyWith(image: response.resultObj!)));
      emit(QuestionState.loadFullName(
          data: state.data.copyWith(fullName: userData['name']!)));
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
