part of 'detail_question_cubit.dart';

@freezed
class DetailQuestionStateData with _$DetailQuestionStateData {
  const factory DetailQuestionStateData({
    @Default('') String error,
    QuestionResponse? questionResponse,
    ListAnswerResponse? listAnswerResponse,
    List<ResultObjs>? resultObjs,
    List<SubAnswer>? sub_answers,
    @Default("disconnected") String signalRStatus,
    @Default(false) bool isOpenSubAnswer,
    @Default(1) int countAnswer,
    VoteAnswerResponse? voteAnswerResponse,
    VoteAnswerResponse? getMyVote,
    @Default([]) List<VoteAnswerResponse> listVoteAnswerResponse,
  }) = _DetailQuestionStateData;
}

@freezed
class DetailQuestionState with _$DetailQuestionState {
  const factory DetailQuestionState.initial(
      {required DetailQuestionStateData data}) = Initial;
  const factory DetailQuestionState.loading(
      {required DetailQuestionStateData data}) = Loading;
  const factory DetailQuestionState.loaded(
      {required DetailQuestionStateData data}) = Loaded;
  const factory DetailQuestionState.error(
      {required DetailQuestionStateData data}) = Error;

  const factory DetailQuestionState.answer(
      {required DetailQuestionStateData data}) = Answer;

  const factory DetailQuestionState.answered(
      {required DetailQuestionStateData data}) = Answered;

  const factory DetailQuestionState.countAnswer(
      {required DetailQuestionStateData data}) = CountAnswer;

  const factory DetailQuestionState.signalRStatus(
      {required DetailQuestionStateData data}) = SignalRStatus;

  const factory DetailQuestionState.openSubAnswer(
      {required DetailQuestionStateData data}) = OpenSubAnswer;

  const factory DetailQuestionState.subanswers({
    required DetailQuestionStateData data,
  }) = SubAnswers;

  const factory DetailQuestionState.voteAnswer({
    required DetailQuestionStateData data,
  }) = VoteAnswer;

  const factory DetailQuestionState.getMyVote({
    required DetailQuestionStateData data,
  }) = GetMyVote;

  const factory DetailQuestionState.listVoteAnswer({
    required DetailQuestionStateData data,
  }) = ListVoteAnswer;
}
