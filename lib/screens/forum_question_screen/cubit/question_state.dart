part of 'question_cubit.dart';

@freezed
class QuestionStateData with _$QuestionStateData {
  const factory QuestionStateData({
    @Default('') String error,
    QuestionResponse? questionResponse,
    ListQuestionResponse? listQuestionResponse,
    ListQuestionResponse? listQuestionResponseOriginal,
    SuccesResponseBool? successResponseBool,
    @Default([]) List<String> listTag,
    @Default('') String? fullName,
    @Default('') String? image,
    VoteAnswerResponse? getMyVote,
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

  const factory QuestionState.searchQuestion(
      {required QuestionStateData data}) = SearchQuestion;

  const factory QuestionState.getAllTag({required QuestionStateData data}) =
      GetAllTag;

  const factory QuestionState.getMyVote({required QuestionStateData data}) =
      GetMyVote;

  const factory QuestionState.voteQuestion({required QuestionStateData data}) =
      VoteQuestion;
}
