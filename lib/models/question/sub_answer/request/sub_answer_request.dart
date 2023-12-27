class SubAnswerRequest {
  final String preAnswerId;
  final String content;
  final DateTime pubDate;
  final String authorId;

  SubAnswerRequest({
    required this.preAnswerId,
    required this.content,
    required this.pubDate,
    required this.authorId,
  });

  SubAnswerRequest copyWith({
    String? preAnswerId,
    String? content,
    DateTime? pubDate,
    String? authorId,
  }) =>
      SubAnswerRequest(
        preAnswerId: preAnswerId ?? this.preAnswerId,
        content: content ?? this.content,
        pubDate: pubDate ?? this.pubDate,
        authorId: authorId ?? this.authorId,
      );

  factory SubAnswerRequest.fromJson(Map<String, dynamic> json) =>
      SubAnswerRequest(
        preAnswerId: json["preAnswerId"],
        content: json["content"],
        pubDate: DateTime.parse(json["createdAt"]),
        authorId: json["authorId"],
      );

  Map<String, dynamic> toJson() => {
        "preAnswerId": preAnswerId,
        "content": content,
        "createdAt": pubDate.toIso8601String(),
        "authorId": authorId,
      };
}
