class AnswerRequest {
  final String authorId;
  final String questionId;
  final DateTime pubDate;
  final String content;

  AnswerRequest({
    required this.authorId,
    required this.questionId,
    required this.pubDate,
    required this.content,
  });

  AnswerRequest copyWith({
    String? authorId,
    String? questionId,
    DateTime? pubDate,
    String? content,
  }) =>
      AnswerRequest(
        authorId: authorId ?? this.authorId,
        questionId: questionId ?? this.questionId,
        pubDate: pubDate ?? this.pubDate,
        content: content ?? this.content,
      );

  factory AnswerRequest.fromJson(Map<String, dynamic> json) => AnswerRequest(
        authorId: json["authorId"],
        questionId: json["questionId"],
        pubDate: DateTime.parse(json["createdAt"]),
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "authorId": authorId,
        "questionId": questionId,
        "createdAt": pubDate.toIso8601String(),
        "content": content,
      };
}
