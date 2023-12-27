import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../get_it.dart';
import '../../../../../models/post/response/add_post_response.dart';
import '../../../../../models/succes/response/success_response_bool.dart';
import '../../../../../repositories/data_repository.dart';

part 'savepost_state.dart';
part 'savepost_cubit.freezed.dart';

class SavepostCubit extends Cubit<SavepostState> {
  final _dataRepository = getIt<DataRepository>();
  SavepostCubit()
      : super(const SavepostState.initial(data: SavepostStateData()));

  Future<void> savePost(
      {required String postId, required String userId}) async {
    try {
      final response = await _dataRepository.savePost(
        userId: userId,
        postId: postId,
      );
      if (response.isSuccessed == true) {
        emit(SavepostState.savePost(
            data: SavepostStateData(savePost: response)));
        if (response.resultObj!.item1 == true) {
          emit(SavepostState.isSave(
              data: state.data.copyWith(
                  isSave: true, numberSave: response.resultObj!.item2)));
        } else {
          emit(SavepostState.isSave(data: state.data.copyWith(isSave: false)));
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  void isSave({required String postId, required String userId}) async {
    try {
      final response = await _dataRepository.checkSavePost(
        userId: userId,
        postId: postId,
      );
      if (response.resultObj!.item1 == true) {
        emit(SavepostState.isSave(
            data: state.data.copyWith(
                isSave: true, numberSave: response.resultObj!.item2)));
      } else {
        emit(SavepostState.isSave(data: state.data.copyWith(isSave: false)));
      }
    } catch (e) {
      log(e.toString());
    } finally {}
  }
}
