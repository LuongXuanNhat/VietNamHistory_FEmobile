class MyPostResponse {
  final bool isSuccessed;
  final String message;
  final List<ResultObj> resultObj;

  MyPostResponse({
    required this.isSuccessed,
    required this.message,
    required this.resultObj,
  });

  MyPostResponse copyWith({
    bool? isSuccessed,
    String? message,
    List<ResultObj>? resultObj,
  }) =>
      MyPostResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory MyPostResponse.fromJson(Map<String, dynamic> json) => MyPostResponse(
        isSuccessed: json["isSuccessed"],
        message: json["message"],
        resultObj: List<ResultObj>.from(
            json["resultObj"].map((x) => ResultObj.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "isSuccessed": isSuccessed,
        "message": message,
        "resultObj": List<dynamic>.from(resultObj.map((x) => x.toJson())),
      };
}

class ResultObj {
  final String id;
  final String subId;
  final String title;
  final String content;
  final String image;
  final DateTime createdAt;
  final String? updatedAt;
  final String topicName;
  final List<dynamic> tags;
  final UserShort userShort;
  final int viewNumber;
  final int commentNumber;
  final int likeNumber;
  final int saveNumber;

  ResultObj({
    required this.id,
    required this.subId,
    required this.title,
    required this.content,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.topicName,
    required this.tags,
    required this.userShort,
    required this.viewNumber,
    required this.commentNumber,
    required this.likeNumber,
    required this.saveNumber,
  });

  ResultObj copyWith({
    String? id,
    String? subId,
    String? title,
    String? content,
    String? image,
    DateTime? createdAt,
    String? updatedAt,
    String? topicName,
    List<dynamic>? tags,
    UserShort? userShort,
    int? viewNumber,
    int? commentNumber,
    int? likeNumber,
    int? saveNumber,
  }) =>
      ResultObj(
        id: id ?? this.id,
        subId: subId ?? this.subId,
        title: title ?? this.title,
        content: content ?? this.content,
        image: image ?? this.image,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        topicName: topicName ?? this.topicName,
        tags: tags ?? this.tags,
        userShort: userShort ?? this.userShort,
        viewNumber: viewNumber ?? this.viewNumber,
        commentNumber: commentNumber ?? this.commentNumber,
        likeNumber: likeNumber ?? this.likeNumber,
        saveNumber: saveNumber ?? this.saveNumber,
      );

  factory ResultObj.fromJson(Map<String, dynamic> json) => ResultObj(
        id: json["id"],
        subId: json["subId"],
        title: json["title"],
        content: json["content"],
        image: json["image"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"],
        topicName: json["topicName"],
        tags: List<dynamic>.from(json["tags"].map((x) => x)),
        userShort: UserShort.fromJson(json["userShort"]),
        viewNumber: json["viewNumber"],
        commentNumber: json["commentNumber"],
        likeNumber: json["likeNumber"],
        saveNumber: json["saveNumber"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "subId": subId,
        "title": title,
        "content": content,
        "image": image,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt,
        "topicName": topicName,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "userShort": userShort.toJson(),
        "viewNumber": viewNumber,
        "commentNumber": commentNumber,
        "likeNumber": likeNumber,
        "saveNumber": saveNumber,
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
