import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/ui_helpers.dart';
import '../../../enums/status_type.dart';
import '../../../get_it.dart';
import '../../../models/topic/response/list_topic_response.dart';
import '../../../repositories/data_repository.dart';
import '../../../route_generator.dart';

part 'create_post_state.dart';
part 'create_post_cubit.freezed.dart';

class CreatePostCubit extends Cubit<CreatePostState> {
  final _dataRepository = getIt<DataRepository>();
  CreatePostCubit()
      : super(const CreatePostState.initial(data: CreatePostStateData()));

  Future<void> getTopics() async {
    try {
      emit(CreatePostState.status(
          data: state.data!.copyWith(status: StatusType.loading)));
      final response = await _dataRepository.getListTopic();
      emit(CreatePostState.getListTopic(
          data: state.data!.copyWith(
              status: StatusType.loaded, listTopic: response.resultObj ?? [])));
    } catch (e) {
      emit(CreatePostState.status(
          data: state.data!.copyWith(status: StatusType.error)));
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  // Future<List<TopicItem>> getAllTopic() async {
  //   List<TopicItem> topics = [];
  //   final response = await _dataRepository.getListTopic();
  //   topics = [...response.resultObj!];
  //   return topics;
  // }

  Future<void> selectImage(ImageSource? source) async {
    final image = await ImagePicker().pickImage(source: source!);
    if (image != null) {
      emit(CreatePostState.getImage(
          data: state.data!.copyWith(image: File(image.path))));
    } else {
      emit(CreatePostState.getImage(data: state.data!.copyWith(image: null)));
    }
  }

  Future<void> addPost(
      {required String title,
      required String content,
      required File image,
      required String topicId,
      required List<String> tag}) async {
    try {
      UIHelpers.showLoading();
      final data = await _dataRepository.createPost(
          title: title,
          content: content,
          image: image,
          topicId: topicId,
          tag: tag);
      UIHelpers.showSnackBar(
          title: 'Thông báo', message: 'Tạo bài viết thành công');
      // navigator!.pushNamedAndRemoveUntil(RouteGenerator.discoverScreen);
      navigator!.pushNamedAndRemoveUntil(
        RouteGenerator.mainScreen,
        arguments: {
          'currentIndex': 0,
        },
        (route) => false,
      );

      if (data.isSuccessed == true) {
        emit(CreatePostState.success(data: state.data!.copyWith(success: 1)));
      } else {
        emit(CreatePostState.getError(
            data: state.data!.copyWith(error: data.message)));
      }
    } catch (e) {
      emit(CreatePostState.getError(
          data: state.data!.copyWith(error: e.toString())));
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
