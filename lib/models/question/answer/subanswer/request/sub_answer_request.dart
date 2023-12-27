import 'dart:convert';

class UpdateSubAnswerRequest {
  final String id;
  final String preAnswerId;
  final String content;
  final String authorId;

  UpdateSubAnswerRequest({
    required this.id,
    required this.preAnswerId,
    required this.content,
    required this.authorId,
  });

  UpdateSubAnswerRequest copyWith({
    String? id,
    String? preAnswerId,
    String? content,
    String? authorId,
  }) =>
      UpdateSubAnswerRequest(
        id: id ?? this.id,
        preAnswerId: preAnswerId ?? this.preAnswerId,
        content: content ?? this.content,
        authorId: authorId ?? this.authorId,
      );

  factory UpdateSubAnswerRequest.fromRawJson(String str) =>
      UpdateSubAnswerRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateSubAnswerRequest.fromJson(Map<String, dynamic> json) =>
      UpdateSubAnswerRequest(
        id: json["id"],
        preAnswerId: json["preAnswerId"],
        content: json["content"],
        authorId: json["authorId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "preAnswerId": preAnswerId,
        "content": content,
        "authorId": authorId,
      };
}
