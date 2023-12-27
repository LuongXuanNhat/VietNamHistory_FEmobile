import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../../common/ui_helpers.dart';
import '../../../../get_it.dart';
import '../../../../models/question/answer/request/update_answer_request.dart';
import '../../../../models/question/answer/response/listanswerresponse.dart';
import '../../../../models/question/answer/subanswer/request/sub_answer_request.dart';
import '../../../../models/user/user_pres.dart';
import '../../../../repositories/data_repository.dart';

part 'edit_answer_state.dart';
part 'edit_answer_cubit.freezed.dart';

class EditAnswerCubit extends Cubit<EditAnswerState> {
  final _dataRepository = getIt<DataRepository>();
  EditAnswerCubit()
      : super(const EditAnswerState.initial(data: EditAnswerStateData()));

  Future<void> editAnswer({
    required String questionId,
    required String answerId,
    required String authorId,
    required String content,
  }) async {
    try {
      UIHelpers.showLoading();
      final request = UpdateAnswerRequest(
        id: answerId,
        questionId: questionId,
        authorId: authorId,
        content: content,
        updatedAt: DateTime.now(),
      );

      final response = await _dataRepository.updateAnswer(request: request);

      if (response.isSuccessed == true) {
        UIHelpers.showSnackBar(message: 'Cập nhật câu trả lời thành công');
        navigator!.pop();
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> updateSubAnswer({
    required String id,
    required String preAnswerId,
    required String content,
    required String authorId,
  }) async {
    try {
      UIHelpers.showLoading();
      final request = UpdateSubAnswerRequest(
        id: id,
        preAnswerId: preAnswerId,
        content: content,
        authorId: authorId,
      );
      final response = await _dataRepository.updateSubAnswer(request: request);

      if (response.isSuccessed == true) {
        UIHelpers.showSnackBar(message: 'Cập nhật câu bình luận thành công');
        navigator!.pop();
      }
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
