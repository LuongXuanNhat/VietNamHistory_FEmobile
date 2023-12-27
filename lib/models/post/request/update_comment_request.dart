import 'dart:convert';

class UpdateCommentRequest {
  String? id;
  String? userId;
  String? postId;
  String? content;

  UpdateCommentRequest({
    this.id,
    this.userId,
    this.postId,
    this.content,
  });

  UpdateCommentRequest copyWith({
    String? id,
    String? userId,
    String? postId,
    String? content,
  }) =>
      UpdateCommentRequest(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        postId: postId ?? this.postId,
        content: content ?? this.content,
      );

  factory UpdateCommentRequest.fromRawJson(String str) =>
      UpdateCommentRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateCommentRequest.fromJson(Map<String, dynamic> json) {
    return UpdateCommentRequest(
      id: json['id'],
      userId: json['userId'],
      postId: json['postId'],
      content: json['content'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['userId'] = userId;
    data['postId'] = postId;
    data['content'] = content;
    return data;
  }
}
