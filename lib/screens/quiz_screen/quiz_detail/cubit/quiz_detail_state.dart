part of 'quiz_detail_cubit.dart';

@freezed
class QuizDetailStateData with _$QuizDetailStateData {
  const factory QuizDetailStateData({
    @Default('') String error,
    DetailQuizResponse? detailQuizResponse,
  }) = _QuizDetailStateData;
}

@freezed
class QuizDetailState with _$QuizDetailState {
  const factory QuizDetailState.initial({required QuizDetailStateData data}) =
      Initial;
  const factory QuizDetailState.getError({required QuizDetailStateData data}) =
      Error;
  const factory QuizDetailState.detailQuiz(
      {required QuizDetailStateData data}) = DetailQuiz;
}
