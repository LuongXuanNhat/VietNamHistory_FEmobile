import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import '../../../../../common/ui_helpers.dart';
import '../../../../../models/post/response/comment_post_response.dart';
import '../../../../../models/post/model/comment.dart';

import '../../../../../get_it.dart';

import '../../../../../models/post/request/create_commnet_request.dart';

import '../../../../../models/user/user_pres.dart';
import '../../../../../repositories/data_repository.dart';

part 'comment_state.dart';
part 'comment_cubit.freezed.dart';

class CommentCubit extends Cubit<CommentState> {
  final _dataRepository = getIt<DataRepository>();
  CommentCubit() : super(const CommentState.initial(data: CommentStateData()));

  Future<void> loadImageUser() async {
    final response = await _dataRepository.getImage();
    if (response.isSuccessed == true) {
      emit(CommentState.loadImageUser(
          data: state.data.copyWith(imageUser: response.resultObj!)));
    }
  }

  Future<void> commentPost(
      {required String postId, required String content}) async {
    try {
      UIHelpers.showLoading();
      Map<String, String> userData = await UserPreferences.getUser();
      final request = CreateCommentRequest(
          postId: postId,
          userId: userData['id'],
          content: content,
          createdAt: DateTime.now());
      final response = await _dataRepository.createComment(request: request);

      if (response.isSuccessed == true) {
        loadComment(postId);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  void loadComment(String postId) async {
    try {
      final response = await _dataRepository.getComment(postId: postId);
      if (response.isSuccessed == true) {
        List<ResultObj> sortedList = List.from(response.resultObj)
          ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
        emit(CommentState.listComment(
            data: state.data.copyWith(
          dataLoad: response,
          resultObjs: sortedList,
        )));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void loadCommentHubConnection({required CommentResponse data}) async {
    try {
      List<ResultObj> sortedList = List.from(data.resultObj)
        ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
      emit(CommentState.listComment(
          data: state.data.copyWith(
        dataLoad: data,
        resultObjs: sortedList,
      )));
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> deleteComment({required String id}) async {
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.deleteComment(idComment: id);
      if (response.isSuccessed == true) {
        loadCommentHubConnection(data: response);
        UIHelpers.showSnackBar(message: 'Xóa bình luận thành công');
      } else {
        UIHelpers.showSnackBar(message: 'Xóa bình luận thất bại');
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
