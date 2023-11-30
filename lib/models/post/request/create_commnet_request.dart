import 'dart:convert';

class CreateCommentRequest {
  String? userId;
  String? postId;
  String? content;

  CreateCommentRequest({
    this.userId,
    this.postId,
    this.content,
  });

  CreateCommentRequest copyWith({
    String? userId,
    String? postId,
    String? content,
  }) =>
      CreateCommentRequest(
        userId: userId ?? this.userId,
        postId: postId ?? this.postId,
        content: content ?? this.content,
      );

  factory CreateCommentRequest.fromRawJson(String str) =>
      CreateCommentRequest.fromJson(json.decode(str));

  CreateCommentRequest.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    postId = json['postId'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['postId'] = postId;
    data['content'] = content;
    return data;
  }
}
