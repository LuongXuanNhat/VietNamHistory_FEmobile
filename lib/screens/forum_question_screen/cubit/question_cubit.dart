import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../models/question/response/listquestionresponse.dart';

import '../../../common/storage/app_prefs.dart';
import '../../../common/ui_helpers.dart';
import '../../../get_it.dart';
import '../../../models/question/response/listquestionresponse.dart' as item;
import '../../../models/question/response/questionresponse.dart';
import '../../../models/question/sub_answer/response/vote_asnwert_response.dart';
import '../../../models/succes/response/success_response_bool.dart';
import '../../../models/user/user_pres.dart';
import '../../../repositories/data_repository.dart';
import '../../detail_post_screen/submit/comment/cubit/comment_cubit.dart';

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
            data: state.data.copyWith(
                listQuestionResponse: response,
                listQuestionResponseOriginal: response)));
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

  Future<void> searchQuestion({required String searchText}) async {
    List<item.ResultObj> listQuestion = [
      ...?state.data.listQuestionResponseOriginal!.resultObj
    ];
    if (searchText.isEmpty) {
      emit(QuestionState.getAllQuestion(
          data: state.data.copyWith(
              listQuestionResponse:
                  ListQuestionResponse(resultObj: listQuestion))));
    } else {
      final searchTEXT = searchText.toLowerCase();

      final result = listQuestion
          .where((element) => element.title.toLowerCase().contains(searchTEXT))
          .toList();
      emit(QuestionState.getAllQuestion(
          data: state.data.copyWith(
              listQuestionResponse: ListQuestionResponse(resultObj: result))));
    }
  }

  Future<void> getMyQuestion() async {
    final response = await dataRepository.getMyQuestion();
    if (response.isSuccessed == true) {
      emit(QuestionState.getAllQuestion(
          data: state.data.copyWith(
              listQuestionResponse: response,
              listQuestionResponseOriginal: response)));
    }
  }

  Future<void> getMyQuestionSave() async {
    final response = await dataRepository.getMyQuestionSave();
    if (response.isSuccessed == true) {
      emit(QuestionState.getAllQuestion(
          data: state.data.copyWith(
              listQuestionResponse: response,
              listQuestionResponseOriginal: response)));
    }
  }

  Future<void> getAllTag() async {
    try {
      final response = await dataRepository.getAllTag(
        numberTag: 10,
      );
      if (response.isSuccessed == true) {
        emit(QuestionState.getAllTag(
            data: state.data.copyWith(listTag: response.resultObj)));
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> getQuestionByTag({required String tag}) async {
    try {
      UIHelpers.showLoading();
      final response = await dataRepository.getListQuestionByTag(tag: tag);
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

  Future<void> saveQuestion({required String questionId}) async {
    try {
      final userData = await UserPreferences.getUser();
      final response = await dataRepository.saveQuestion(
          questionId: questionId, userId: userData['id']!);
      if (response.isSuccessed == true) {
        getAllQuestion();
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
