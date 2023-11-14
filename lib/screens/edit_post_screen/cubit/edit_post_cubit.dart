import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/ui_helpers.dart';
import '../../../enums/status_type.dart';

import '../../../get_it.dart';
import '../../../models/post/response/add_post_response.dart';
import '../../../models/topic/response/list_topic_response.dart';
import '../../../repositories/data_repository.dart';

part 'edit_post_state.dart';
part 'edit_post_cubit.freezed.dart';

class EditPostCubit extends Cubit<EditPostState> {
  final _dataRepository = getIt<DataRepository>();
  EditPostCubit()
      : super(const EditPostState.initial(data: EditPostStateData()));

  Future<void> getTopicDetail({required String id}) async {
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.getDetailPost(id: id);
      if (response.isSuccessed == true) {
        emit(EditPostState.success(data: EditPostStateData(data: response)));
      }
    } catch (e) {
      log(e.toString());
    } finally {}
  }
}
