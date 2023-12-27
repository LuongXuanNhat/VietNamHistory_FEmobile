class VoteAnswerRequest {
  final String questionId;
  final String answerId;
  final String userId;
  final String questionUserId;

  VoteAnswerRequest({
    required this.questionId,
    required this.answerId,
    required this.userId,
    required this.questionUserId,
  });

  VoteAnswerRequest copyWith({
    String? questionId,
    String? answerId,
    String? userId,
    String? questionUserId,
  }) =>
      VoteAnswerRequest(
        questionId: questionId ?? this.questionId,
        answerId: answerId ?? this.answerId,
        userId: userId ?? this.userId,
        questionUserId: questionUserId ?? this.questionUserId,
      );

  factory VoteAnswerRequest.fromJson(Map<String, dynamic> json) =>
      VoteAnswerRequest(
        questionId: json["questionId"],
        answerId: json["answerId"],
        userId: json["userId"],
        questionUserId: json["questionUserId"],
      );

  Map<String, dynamic> toJson() => {
        "questionId": questionId,
        "answerId": answerId,
        "userId": userId,
        "questionUserId": questionUserId,
      };
}
