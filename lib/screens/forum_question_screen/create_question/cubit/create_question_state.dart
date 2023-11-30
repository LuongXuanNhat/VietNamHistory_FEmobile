part of 'create_question_cubit.dart';

@freezed
class CreateQuestionStateData with _$CreateQuestionStateData {
  const factory CreateQuestionStateData(
      {@Default('') String error,
      QuestionResponse? questionResponse,
      ListQuestionResponse? listQuestionResponse,
      @Default('') String image,
      @Default('') String fullName}) = _CreateQuestionScrennStateData;
}

@freezed
class CreateQuestionState with _$CreateQuestionState {
  const factory CreateQuestionState.initial(
      {required CreateQuestionStateData data}) = Initial;
  const factory CreateQuestionState.getError(
      {required CreateQuestionStateData data}) = GetError;
  const factory CreateQuestionState.createQuestion(
      {required CreateQuestionStateData data}) = CreateQuestion;

  const factory CreateQuestionState.loadImage(
      {required CreateQuestionStateData data}) = LoadImage;
  const factory CreateQuestionState.loadFullName(
      {required CreateQuestionStateData data}) = LoadFullName;

  const factory CreateQuestionState.getAllQuestion(
      {required CreateQuestionStateData data}) = GetAllQuestion;
}
