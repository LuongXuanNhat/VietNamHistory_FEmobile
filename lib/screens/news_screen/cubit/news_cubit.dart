import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/ui_helpers.dart';
import '../../../get_it.dart';
import '../../../models/news/response/news_response.dart';
import '../../../repositories/data_repository.dart';

part 'news_state.dart';
part 'news_cubit.freezed.dart';

class NewsCubit extends Cubit<NewsState> {
  final _dataRepository = getIt<DataRepository>();
  NewsCubit() : super(const NewsState.initial(data: NewsStateData()));

  Future<void> getNews() async {
    try {
      UIHelpers.showLoading();
      final response = await _dataRepository.getNews();
      if (response.isSuccessed == true) {
        emit(NewsState.loaded(
            data: state.data.copyWith(newsResponse: response)));
      }
    } catch (e) {
      log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
