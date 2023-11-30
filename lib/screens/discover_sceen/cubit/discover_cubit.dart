import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/ui_helpers.dart';
import '../../../enums/status_type.dart';
import '../../../get_it.dart';
import '../../../models/post/discover/response/list_discover_response.dart';
import '../../../repositories/data_repository.dart';

part 'discover_state.dart';
part 'discover_cubit.freezed.dart';

class DiscoverCubit extends Cubit<DiscoverState> {
  final _dataRepository = getIt<DataRepository>();
  DiscoverCubit() : super(DiscoverState.initial(data: DiscoverStateData()));

  Future<void> getListTag() async {
    List<String> tags = [];
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.getListTag();
      if (response.isSuccessed == true) {
        for (var element in response.resultObj) {
          tags.add(element);
        }
        emit(DiscoverState.getListTag(
            data: state.data!.copyWith(listTag: tags)));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getDiscover() async {
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.getListDiscover();
      emit(DiscoverState.getListDiscover(
          data: state.data!.copyWith(
              listDiscover: response,
              status: StatusType.loaded,
              listDiscoverOriginal: response)));
    } catch (e) {
      emit(DiscoverState.getError(
          data: state.data?.copyWith(error: e.toString())));
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getDiscoverByTag({required String tag}) async {
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.getListPostByTag(tag: tag);
      emit(DiscoverState.getListDiscover(
          data: state.data!.copyWith(listDiscover: response)));
    } catch (e) {
      emit(DiscoverState.getError(
          data: state.data?.copyWith(error: e.toString())));
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> searchPost({required String searchText}) async {
    List<ResultObj> listDiscoverResponse = [
      ...state.data!.listDiscoverOriginal!.resultObj!
    ];
    emit(DiscoverState.status(
        data: state.data?.copyWith(status: StatusType.loading)));
    if (searchText.isEmpty) {
      emit(DiscoverState.getListDiscover(
          data: state.data!.copyWith(
              listDiscover:
                  ListDiscoverResponse(resultObj: listDiscoverResponse))));
    } else {
      final searchTEXT = searchText.toLowerCase();
      final result = listDiscoverResponse
          .where((ResultObj element) =>
              element.title!.toLowerCase().contains(searchTEXT))
          .toList();
      emit(DiscoverState.getListDiscover(
          data: state.data!.copyWith(
              listDiscover: ListDiscoverResponse(resultObj: result))));
    }
  }
}
