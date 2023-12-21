class UpdateAnswerRequest {
  final String id;
  final String authorId;
  final String questionId;
  final DateTime updatedAt;
  final String content;

  UpdateAnswerRequest({
    required this.id,
    required this.authorId,
    required this.questionId,
    required this.updatedAt,
    required this.content,
  });

  UpdateAnswerRequest copyWith({
    String? id,
    String? authorId,
    String? questionId,
    DateTime? updatedAt,
    String? content,
  }) =>
      UpdateAnswerRequest(
        id: id ?? this.id,
        authorId: authorId ?? this.authorId,
        questionId: questionId ?? this.questionId,
        updatedAt: updatedAt ?? this.updatedAt,
        content: content ?? this.content,
      );

  factory UpdateAnswerRequest.fromJson(Map<String, dynamic> json) =>
      UpdateAnswerRequest(
        id: json["Id"],
        authorId: json["AuthorId"],
        questionId: json["QuestionId"],
        updatedAt: DateTime.parse(json["UpdatedAt"]),
        content: json["Content"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "AuthorId": authorId,
        "QuestionId": questionId,
        "UpdatedAt": updatedAt.toIso8601String(),
        "Content": content,
      };
}
