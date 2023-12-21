import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../../models/question/answer/response/listanswerresponse.dart';

import '../../../../common/storage/app_prefs.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../get_it.dart';
import '../../../../models/question/answer/request/answer_request.dart';
import '../../../../models/question/response/questionresponse.dart';
import '../../../../models/question/sub_answer/request/sub_answer_request.dart';
import '../../../../models/question/sub_answer/request/vote_answer_request.dart';
import '../../../../models/question/sub_answer/response/vote_asnwert_response.dart';
import '../../../../models/user/user_pres.dart';
import '../../../../repositories/data_repository.dart';
import '../../../../route_generator.dart';

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

  Future<void> createAnser(
      {required String questionId,
      required String content,
      required String subId}) async {
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
      if (response.isSuccessed == true) {
        getDetailQuestion(subId: subId);
      }

      _handleCreateAnswerResult(response);
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> updateAnswer({
    required String id,
    required String title,
    required String content,
    required List<String> tag,
  }) async {
    try {
      UIHelpers.showLoading();
      final response = await dataRepository.updateQuestion(
        id: id,
        title: title,
        content: content,
        tag: tag,
      );

      if (response.isSuccessed == true) {
        UIHelpers.showSnackBar(message: 'Cập nhật thành công');
        navigator!.pushNamedAndRemoveUntil(
            RouteGenerator.mainScreen,
            arguments: {'currentIndex': 3},
            (route) => false);
      } else {
        UIHelpers.showSnackBar(message: 'Có lỗi xảy ra');
      }
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
          listAnswerResponse: response,
          resultObjs: sortedList,
        )));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> deleteSubAnswer({required String id}) async {
    try {
      UIHelpers.showLoading();
      final response = await dataRepository.deleteSubAnswer(idSubAnswer: id);
      if (response.isSuccessed == true) {
        UIHelpers.showSnackBar(message: 'Xoá thành công');
        getListAnswer(subId: state.data.questionResponse!.resultObj.id);
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> deleteAnswer({required id}) async {
    try {
      UIHelpers.showLoading();
      final response = await dataRepository.deleteAnswer(id: id);
      if (response.isSuccessed == true) {
        UIHelpers.showSnackBar(message: 'Xóa thành công');
        getListAnswer(subId: state.data.questionResponse!.resultObj.id);
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

  void updateWithDataFromHub({required ListAnswerResponse data}) async {
    try {
      List<ResultObjs> sortedList = List.from(data.resultObj)
        ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

      List<SubAnswer> sortedSubList = List.from(data.resultObj[0].subAnswer!)
        ..sort((a, b) => b.createdAt.compareTo(a.createdAt));

      emit(DetailQuestionState.loaded(
          data: state.data.copyWith(
              listAnswerResponse: data,
              resultObjs: sortedList,
              sub_answers: sortedSubList)));
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

  Future<void> voteAnswer(
      {required String questionId,
      required String answerId,
      required String questionUserId,
      required String subId}) async {
    try {
      Map<String, dynamic> userData = await UserPreferences.getUser();
      final request = VoteAnswerRequest(
          questionId: questionId,
          answerId: answerId,
          userId: userData['id']!,
          questionUserId: questionUserId);
      final response = await dataRepository.voteAnswer(request: request);

      if (response.isSuccessed == true) {
        getListAnswer(subId: subId);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> getMyVote({required String answerId}) async {
    try {
      Map<dynamic, String> userData = await UserPreferences.getUser();
      final response = await dataRepository.getMyVote(
          answerId: answerId, userId: userData['id']!);
      if (response.isSuccessed == true) {
        emit(DetailQuestionState.getMyVote(
            data: state.data.copyWith(getMyVote: response)));
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> deleteQuestion({required String id}) async {
    try {
      UIHelpers.showLoading();
      final response = await dataRepository.deleteQuestion(id: id);
      if (response.isSuccessed == true) {
        navigator!.pop();
        UIHelpers.showSnackBar(message: 'Xóa câu hỏi thành công');
        navigator!.pushNamedAndRemoveUntil(
            RouteGenerator.mainScreen,
            arguments: {'currentIndex': 3},
            (context) => false);
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
