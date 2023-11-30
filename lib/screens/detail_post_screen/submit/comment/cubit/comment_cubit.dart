import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
      );
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
        emit(CommentState.listComment(
            data: state.data.copyWith(
                comments: response.resultObj
                    .map((e) => Comment(
                        id: e.id,
                        userId: e.userId,
                        postId: e.postId,
                        userShort: UserShortt(
                            id: e.userShort.id,
                            fullName: e.userShort.fullName,
                            image: e.userShort.image),
                        content: e.content,
                        createdAt: e.createdAt,
                        updatedAt: e.updatedAt,
                        subComment: e.subComment))
                    .toList())));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
