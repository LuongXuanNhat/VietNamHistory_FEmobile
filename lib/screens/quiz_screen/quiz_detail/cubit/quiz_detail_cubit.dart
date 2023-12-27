import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/storage/app_prefs.dart';
import '../../../../get_it.dart';
import '../../../../models/multiplechoice/response/detail_quiz_response.dart';
import '../../../../repositories/data_repository.dart';

part 'quiz_detail_state.dart';
part 'quiz_detail_cubit.freezed.dart';

class QuizDetailCubit extends Cubit<QuizDetailState> {
  final appPref = getIt<AppPref>();
  final dataRepository = getIt<DataRepository>();
  QuizDetailCubit()
      : super(const QuizDetailState.initial(data: QuizDetailStateData()));

  Future<void> detailQuiz(String id) async {
    try {
      final response = await dataRepository.detailQuiz(id: id);
      if (response.isSuccessed == true) {
        emit(QuizDetailState.detailQuiz(
            data: state.data.copyWith(detailQuizResponse: response)));
      }
    } catch (e) {
      emit(QuizDetailState.getError(
          data: state.data.copyWith(error: e.toString())));
    }
  }
}
