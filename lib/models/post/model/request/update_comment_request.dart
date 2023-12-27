class UpdateCommentRequest {
  final String id;
  final String userId;
  final String postId;
  final String content;

  UpdateCommentRequest({
    required this.id,
    required this.userId,
    required this.postId,
    required this.content,
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

  factory UpdateCommentRequest.fromJson(Map<String, dynamic> json) =>
      UpdateCommentRequest(
        id: json["id"],
        userId: json["userId"],
        postId: json["postId"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "postId": postId,
        "content": content,
      };
}
