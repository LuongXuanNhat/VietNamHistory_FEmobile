part of 'quiz_cubit.dart';

@freezed
class QuizStateData with _$QuizStateData {
  const factory QuizStateData({
    @Default('') String error,
    MultipleChoiceResponse? multipleChoiceResponse,
  }) = _QuizStateData;
}

@freezed
class QuizState with _$QuizState {
  const factory QuizState.initial({required QuizStateData data}) = Initial;

  const factory QuizState.loading({required QuizStateData data}) = Loading;
  const factory QuizState.listQuiz({required QuizStateData data}) = ListQuiz;
}
