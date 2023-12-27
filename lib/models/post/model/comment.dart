class Comment {
  final String id;
  final String userId;
  final String postId;
  final UserShortt userShort;
  final String content;
  final DateTime createdAt;
  final dynamic updatedAt;
  final dynamic subComment;

  Comment({
    required this.id,
    required this.userId,
    required this.postId,
    required this.userShort,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
    required this.subComment,
  });

  Comment copyWith({
    String? id,
    String? userId,
    String? postId,
    UserShortt? userShort,
    String? content,
    DateTime? createdAt,
    dynamic updatedAt,
    dynamic subComment,
  }) =>
      Comment(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        postId: postId ?? this.postId,
        userShort: userShort ?? this.userShort,
        content: content ?? this.content,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        subComment: subComment ?? this.subComment,
      );

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: json["id"],
        userId: json["userId"],
        postId: json["postId"],
        userShort: UserShortt.fromJson(json["userShort"]),
        content: json["content"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"],
        subComment: json["subComment"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "postId": postId,
        "userShort": userShort.toJson(),
        "content": content,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt,
        "subComment": subComment,
      };
}

class UserShortt {
  final String id;
  final String fullName;
  final String image;

  UserShortt({
    required this.id,
    required this.fullName,
    required this.image,
  });

  UserShortt copyWith({
    String? id,
    String? fullName,
    String? image,
  }) =>
      UserShortt(
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
        image: image ?? this.image,
      );

  factory UserShortt.fromJson(Map<String, dynamic> json) => UserShortt(
        id: json["id"],
        fullName: json["fullName"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullName": fullName,
        "image": image,
      };
}
