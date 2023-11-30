import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/ui_helpers.dart';
import '../../../enums/status_type.dart';

import '../../../get_it.dart';
import '../../../models/post/response/add_post_response.dart';
import '../../../models/topic/response/list_topic_response.dart';
import '../../../repositories/data_repository.dart';
import '../../../route_generator.dart';

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
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> updatePost(
      {required String id,
      required String title,
      required String content,
      required String topicId,
      File? image,
      required List<String> tags}) async {
    try {
      UIHelpers.showLoading();
      final data = await _dataRepository.updatePost(
          id: id,
          title: title,
          content: content,
          topicId: topicId,
          image: image,
          tag: tags);
      if (data.isSuccessed == true) {
        emit(EditPostState.success(data: EditPostStateData(data: data)));
        navigator?.pushNamedAndRemoveUntil(
            RouteGenerator.mainScreen,
            arguments: {'currentIndex': 3},
            (route) => false);
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> selectImage(ImageSource? source) async {
    final image = await ImagePicker().pickImage(source: source!);
    if (image != null) {
      emit(EditPostState.getImage(
          data: state.data.copyWith(image: File(image.path))));
    } else {
      emit(EditPostState.getImage(data: state.data.copyWith(image: null)));
    }
  }
}
