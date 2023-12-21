import 'dart:convert';

class CreateCommentRequest {
  String? userId;
  String? postId;
  String? content;
  DateTime? createdAt;

  CreateCommentRequest({
    this.userId,
    this.postId,
    this.content,
    this.createdAt,
  });

  CreateCommentRequest copyWith({
    String? userId,
    String? postId,
    String? content,
    DateTime? createdAt,
  }) =>
      CreateCommentRequest(
        userId: userId ?? this.userId,
        postId: postId ?? this.postId,
        content: content ?? this.content,
        createdAt: createdAt ?? this.createdAt,
      );

  factory CreateCommentRequest.fromRawJson(String str) =>
      CreateCommentRequest.fromJson(json.decode(str));

  CreateCommentRequest.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    postId = json['postId'];
    content = json['content'];
    createdAt = DateTime.parse(json['createdAt']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['postId'] = postId;
    data['content'] = content;
    data['createdAt'] = createdAt!.toIso8601String();
    return data;
  }
}
