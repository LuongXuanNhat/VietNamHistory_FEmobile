import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/question/answer/response/listanswerresponse.dart';

import '../../../../common/storage/app_prefs.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../get_it.dart';
import '../../../../models/question/answer/request/answer_request.dart';
import '../../../../models/question/response/questionresponse.dart';
import '../../../../models/question/sub_answer/request/sub_answer_request.dart';
import '../../../../models/user/user_pres.dart';
import '../../../../repositories/data_repository.dart';

part 'detail_question_state.dart';
part 'detail_question_cubit.freezed.dart';

class DetailQuestionCubit extends Cubit<DetailQuestionState> {
  final appPref = getIt<AppPref>();
  final dataRepository = getIt<DataRepository>();
  DetailQuestionCubit()
      : super(
            const DetailQuestionState.initial(data: DetailQuestionStateData()));

  Future<void> getDetailQuestion({required String subId}) async {
    try {
      UIHelpers.showLoading();
      final response = await dataRepository.getDetailPostBySubId(subId: subId);
      if (response.isSuccessed == true) {
        emit(DetailQuestionState.loaded(
            data: state.data.copyWith(questionResponse: response)));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> createAnser({
    required String questionId,
    required String content,
  }) async {
    Map<String, String> userData = await UserPreferences.getUser();
    try {
      UIHelpers.showLoading();
      final request = AnswerRequest(
        authorId: userData['id']!,
        questionId: questionId,
        pubDate: DateTime.now(),
        content: content,
      );
      final response = await dataRepository.createAnswer(
        request: request,
      );

      _handleCreateAnswerResult(response);
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getListAnswer({required String subId}) async {
    try {
      UIHelpers.showLoading();
      final response = await dataRepository.getAnswer(questionId: subId);
      if (response.isSuccessed == true) {
        List<ResultObjs> sortedList = List.from(response.resultObj)
          ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

        emit(DetailQuestionState.loaded(
            data: state.data.copyWith(
                listAnswerResponse: response, resultObjs: sortedList)));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> createSubAnswer({
    required String preAnswerId,
    required String content,
  }) async {
    try {
      Map<String, dynamic> userData = await UserPreferences.getUser();
      final request = SubAnswerRequest(
        authorId: userData['id']!,
        preAnswerId: preAnswerId,
        pubDate: DateTime.now(),
        content: content,
      );
      final response = await dataRepository.createSubAnswer(
        request: request,
      );
      if (response.isSuccessed == true) {
        getListAnswer(subId: state.data.questionResponse!.resultObj.id);
      }
    } catch (e) {
      log(e.toString());
    } finally {}
  }

  void updateWithDataFromHub({required ListAnswerResponse data}) {
    try {
      List<ResultObjs> sortedList = List.from(data.resultObj)
        ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

      emit(DetailQuestionState.loaded(
          data: state.data
              .copyWith(listAnswerResponse: data, resultObjs: sortedList)));
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void _handleCreateAnswerResult(ListAnswerResponse response) {
    if (response.isSuccessed == true) {
      UIHelpers.showSnackBar(message: 'Đăng câu trả lời thành công');
      getListAnswer(subId: state.data.questionResponse!.resultObj.id);
    } else {
      UIHelpers.showSnackBar(message: 'Có lỗi xảy ra');
    }
  }

  void isOpenSubAnswer(bool value) {
    emit(DetailQuestionState.openSubAnswer(
        data: state.data.copyWith(isOpenSubAnswer: value)));
  }
}
