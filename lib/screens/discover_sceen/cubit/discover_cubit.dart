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

  Future<void> getDiscover() async {
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.getListDiscover();
      emit(DiscoverState.getListDiscover(
          data: state.data!.copyWith(listDiscover: response)));
    } catch (e) {
      emit(DiscoverState.getError(
          data: state.data?.copyWith(error: e.toString())));
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
