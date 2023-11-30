class CommentResponse {
  final bool isSuccessed;
  final String message;
  final List<ResultObj> resultObj;

  CommentResponse({
    required this.isSuccessed,
    required this.message,
    required this.resultObj,
  });

  CommentResponse copyWith({
    bool? isSuccessed,
    String? message,
    List<ResultObj>? resultObj,
  }) =>
      CommentResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory CommentResponse.fromJson(Map<String, dynamic> json) =>
      CommentResponse(
        isSuccessed: json['isSuccessed'],
        message: json['message'],
        resultObj: List<ResultObj>.from(
            json['resultObj'].map((x) => ResultObj.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'isSuccessed': isSuccessed,
        'message': message,
        'resultObj': List<dynamic>.from(resultObj.map((x) => x.toJson())),
      };
}

class ResultObj {
  final String id;
  final String userId;
  final String postId;
  final UserShort userShort;
  final String content;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final dynamic subComment;

  ResultObj({
    required this.id,
    required this.userId,
    required this.postId,
    required this.userShort,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
    required this.subComment,
  });

  ResultObj copyWith({
    String? id,
    String? userId,
    String? postId,
    UserShort? userShort,
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic subComment,
  }) =>
      ResultObj(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        postId: postId ?? this.postId,
        userShort: userShort ?? this.userShort,
        content: content ?? this.content,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        subComment: subComment ?? this.subComment,
      );

  factory ResultObj.fromJson(Map<String, dynamic> json) => ResultObj(
        id: json['id'],
        userId: json['userId'],
        postId: json['postId'],
        userShort: UserShort.fromJson(json['userShort']),
        content: json['content'],
        createdAt: DateTime.parse(json['createdAt']),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt']),
        subComment: json['subComment'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'postId': postId,
        'userShort': userShort.toJson(),
        'content': content,
        'createdAt': createdAt.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'subComment': subComment,
      };
}

class UserShort {
  final String id;
  final String fullName;
  final String image;

  UserShort({
    required this.id,
    required this.fullName,
    required this.image,
  });

  UserShort copyWith({
    String? id,
    String? fullName,
    String? image,
  }) =>
      UserShort(
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
        image: image ?? this.image,
      );

  factory UserShort.fromJson(Map<String, dynamic> json) => UserShort(
        id: json['id'],
        fullName: json['fullName'],
        image: json['image'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'fullName': fullName,
        'image': image,
      };
}
