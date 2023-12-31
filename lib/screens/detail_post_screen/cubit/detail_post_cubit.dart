import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import '../../../common/ui_helpers.dart';
import '../../../get_it.dart';
import '../../../models/post/response/add_post_response.dart';
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
        emit(
            DetailPostState.success(data: DetailPostStateData(data: response)));
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
            arguments: {'currentIndex': 0},
            (context) => false);
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
