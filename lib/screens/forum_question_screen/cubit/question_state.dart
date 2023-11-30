part of 'question_cubit.dart';

@freezed
class QuestionStateData with _$QuestionStateData {
  const factory QuestionStateData({
    @Default('') String error,
    QuestionResponse? questionResponse,
    ListQuestionResponse? listQuestionResponse,
    @Default('') String? fullName,
    @Default('') String? image,
  }) = _QuestionStateData;
}

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState.initial({required QuestionStateData data}) =
      Initial;
  const factory QuestionState.loadImage({required QuestionStateData data}) =
      LoadImage;
  const factory QuestionState.loadFullName({required QuestionStateData data}) =
      LoadFullName;
  const factory QuestionState.getAllQuestion(
      {required QuestionStateData data}) = GetAllQuestion;
}
