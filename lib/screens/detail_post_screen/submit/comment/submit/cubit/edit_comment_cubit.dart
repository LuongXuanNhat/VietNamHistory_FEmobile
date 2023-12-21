import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../../../../common/ui_helpers.dart';
import '../../../../../../get_it.dart';
import '../../../../../../models/post/request/update_comment_request.dart';
import '../../../../../../models/post/response/comment_post_response.dart';
import '../../../../../../models/user/user_pres.dart';
import '../../../../../../repositories/data_repository.dart';

part 'edit_comment_state.dart';
part 'edit_comment_cubit.freezed.dart';

class EditCommentCubit extends Cubit<EditCommentState> {
  final _dataRepository = getIt<DataRepository>();
  EditCommentCubit()
      : super(const EditCommentState.initial(data: EditCommentStateData()));

  Future<void> udpateComment({
    required String id,
    required String postId,
    required String content,
  }) async {
    try {
      UIHelpers.showLoading();
      Map<dynamic, String> userData = await UserPreferences.getUser();
      final request = UpdateCommentRequest(
        id: id,
        postId: postId,
        content: content,
        userId: userData['id'],
      );
      final response = await _dataRepository.updateComment(request: request);
      if (response.isSuccessed == true) {
        emit(EditCommentState.loading(
            data: EditCommentStateData(commentResponse: response)));
        UIHelpers.showSnackBar(message: 'Cập nhật bình luận thành công');
        navigator!.pop();
      } else {
        UIHelpers.showSnackBar(message: 'Cập nhật bình luận thất bại');
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
