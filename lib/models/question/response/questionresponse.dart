class QuestionResponse {
  final bool isSuccessed;
  final String message;
  final ResultObj resultObj;

  QuestionResponse({
    required this.isSuccessed,
    required this.message,
    required this.resultObj,
  });

  QuestionResponse copyWith({
    bool? isSuccessed,
    String? message,
    ResultObj? resultObj,
  }) =>
      QuestionResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory QuestionResponse.fromJson(Map<String, dynamic> json) =>
      QuestionResponse(
        isSuccessed: json["isSuccessed"],
        message: json["message"],
        resultObj: ResultObj.fromJson(json["resultObj"]),
      );

  Map<String, dynamic> toJson() => {
        "isSuccessed": isSuccessed,
        "message": message,
        "resultObj": resultObj.toJson(),
      };
}

class ResultObj {
  final String id;
  final String title;
  final String content;
  final DateTime createAt;
  final dynamic updateAt;
  final List<Tag> tags;
  final UserShort userShort;
  final int viewNumber;
  final int commentNumber;
  final int saveNumber;

  ResultObj({
    required this.id,
    required this.title,
    required this.content,
    required this.createAt,
    required this.updateAt,
    required this.tags,
    required this.userShort,
    required this.viewNumber,
    required this.commentNumber,
    required this.saveNumber,
  });

  ResultObj copyWith({
    String? id,
    String? title,
    String? content,
    DateTime? createAt,
    dynamic updateAt,
    List<Tag>? tags,
    UserShort? userShort,
    int? viewNumber,
    int? commentNumber,
    int? saveNumber,
  }) =>
      ResultObj(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        createAt: createAt ?? this.createAt,
        updateAt: updateAt ?? this.updateAt,
        tags: tags ?? this.tags,
        userShort: userShort ?? this.userShort,
        viewNumber: viewNumber ?? this.viewNumber,
        commentNumber: commentNumber ?? this.commentNumber,
        saveNumber: saveNumber ?? this.saveNumber,
      );

  factory ResultObj.fromJson(Map<String, dynamic> json) => ResultObj(
        id: json["id"],
        title: json["title"],
        content: json["content"],
        createAt: DateTime.parse(json["createdAt"]),
        updateAt: json["updatedAt"],
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        userShort: UserShort.fromJson(json["userShort"]),
        viewNumber: json["viewNumber"],
        commentNumber: json["commentNumber"],
        saveNumber: json["saveNumber"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "content": content,
        "createdAt": createAt.toIso8601String(),
        "updatedAt": updateAt,
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
        "userShort": userShort.toJson(),
        "viewNumber": viewNumber,
        "commentNumber": commentNumber,
        "saveNumber": saveNumber,
      };
}

class Tag {
  final String id;
  final String name;

  Tag({
    required this.id,
    required this.name,
  });

  Tag copyWith({
    String? id,
    String? name,
  }) =>
      Tag(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
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
