import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../common/ui_helpers.dart';
import '../../../../../get_it.dart';
import '../../../../../models/post/response/add_post_response.dart';
import '../../../../../models/succes/response/success_response_bool.dart';
import '../../../../../repositories/data_repository.dart';

part 'likepost_state.dart';
part 'likepost_cubit.freezed.dart';

class LikepostCubit extends Cubit<LikepostState> {
  final _dataRepository = getIt<DataRepository>();
  LikepostCubit()
      : super(const LikepostState.initial(data: LikepostStateData()));

  Future<void> likePost(
      {required String postId, required String userId}) async {
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.likePost(
        userId: userId,
        postId: postId,
      );
      if (response.isSuccessed == true) {
        emit(LikepostState.likePost(
            data: LikepostStateData(likePost: response)));
        if (response.resultObj!.item1 == true) {
          emit(LikepostState.isLike(
            data: state.data.copyWith(
              isLike: true,
              numberLike: response.resultObj!.item2,
            ),
          ));
        } else {
          emit(LikepostState.isLike(data: state.data.copyWith(isLike: false)));
        }
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
      if (response.resultObj!.item1 == true) {
        emit(LikepostState.isLike(
          data: state.data.copyWith(
            isLike: true,
            numberLike: response.resultObj!.item2,
          ),
        ));
      } else {
        emit(LikepostState.isLike(data: state.data.copyWith(isLike: false)));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
