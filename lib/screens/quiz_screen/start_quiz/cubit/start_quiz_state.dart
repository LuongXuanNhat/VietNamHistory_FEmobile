part of 'start_quiz_cubit.dart';

@freezed
class StartQuizStateData with _$StartQuizStateData {
  const factory StartQuizStateData({
    @Default('') String error,
    @Default(StatusType.init) StatusType status,
    @Default(0) int questionIndex,
    @Default(false) bool isLastQuestion,
    @Default(false) bool isFirstQuestion,
    @Default([]) List<Quiz> listQuiz,
    @Default([]) List<Quiz> listQuizCurrent,
    Timer.Timer? timer,
    @Default(1) int remainSeconds,
    DetailQuizResponse? detailQuizResponse,
  }) = _StartQuizStateData;
}

@freezed
class StartQuizState with _$StartQuizState {
  const factory StartQuizState.initial({required StartQuizStateData data}) =
      Initial;
  const factory StartQuizState.status({required StartQuizStateData data}) =
      Status;
  const factory StartQuizState.getError({required StartQuizStateData data}) =
      Error;
  const factory StartQuizState.detailQuiz({required StartQuizStateData data}) =
      DetailQuiz;
  const factory StartQuizState.nextQuestion(
      {required StartQuizStateData data}) = NextQuestion;
  const factory StartQuizState.previousQuestion(
      {required StartQuizStateData data}) = PreviousQuestion;
  const factory StartQuizState.indexQuestion(
      {required StartQuizStateData data}) = IndexQuestion;
  const factory StartQuizState.listQuiz({required StartQuizStateData data}) =
      ListQuiz;
  const factory StartQuizState.listQuizCurrent(
      {required StartQuizStateData data}) = ListQuizCurrent;

  const factory StartQuizState.remainSeconds(
      {required StartQuizStateData data}) = RemainSeconds;
  const factory StartQuizState.isLastQuestion(
      {required StartQuizStateData data}) = IsLastQuestion;
  const factory StartQuizState.timer({required StartQuizStateData data}) = Time;
}
