import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../common/ui_helpers.dart';
import '../../../get_it.dart';
import '../../../models/post/response/add_post_response.dart';
import '../../../models/succes/response/success_response.dart';
import '../../../models/succes/response/success_response_bool.dart';
import '../../../repositories/data_repository.dart';
import '../../../route_generator.dart';

part 'detail_post_state.dart';
part 'detail_post_cubit.freezed.dart';

class DetailPostCubit extends Cubit<DetailPostState> {
  final _dataRepository = getIt<DataRepository>();
  DetailPostCubit()
      : super(const DetailPostState.initial(data: DetailPostStateData()));

  Future<void> getDetailPost({required String id}) async {
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.getDetailPost(id: id);
      if (response.isSuccessed == true) {
        emit(DetailPostState.getDetailPost(
            data: DetailPostStateData(detailPost: response)));
      }
    } catch (e) {
      UIHelpers.showSnackBar(message: e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> deletePost({required String id}) async {
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.deletePost(id: id);
      if (response.isSuccessed == true) {
        navigator!.pop();
        UIHelpers.showSnackBar(message: 'Xóa bài viết thành công');
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

  Future<void> likePost(
      {required String postId, required String userId}) async {
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.likePost(
        userId: userId,
        postId: postId,
      );
      if (response.isSuccessed == true) {
        emit(DetailPostState.likePost(
            data: DetailPostStateData(likePost: response)));
        emit(DetailPostState.isLike(
            data: DetailPostStateData(isLike: response.resultObj!)));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> savePost(
      {required String postId, required String userId}) async {
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.savePost(
        userId: userId,
        postId: postId,
      );
      if (response.isSuccessed == true) {
        emit(DetailPostState.savePost(
            data: DetailPostStateData(savePost: response)));
        emit(DetailPostState.isSave(
            data: DetailPostStateData(isSave: response.resultObj!)));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void isSave({required String postId, required String userId}) async {
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.checkSavePost(
        userId: userId,
        postId: postId,
      );
      if (response.isSuccessed == true) {
        emit(DetailPostState.isSave(
            data: DetailPostStateData(isSave: response.resultObj!)));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void isLike({required String postId, required String userId}) async {
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.checkLikePost(
        userId: userId,
        postId: postId,
      );
      if (response.isSuccessed == true) {
        emit(DetailPostState.isLike(
            data: DetailPostStateData(isLike: response.resultObj!)));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
