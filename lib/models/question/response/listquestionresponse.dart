class ListQuestionResponse {
  bool? isSuccessed;
  String? message;
  List<ResultObj>? resultObj;

  ListQuestionResponse({
    this.isSuccessed,
    this.message,
    this.resultObj,
  });

  ListQuestionResponse copyWith({
    bool? isSuccessed,
    String? message,
    List<ResultObj>? resultObj,
  }) =>
      ListQuestionResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory ListQuestionResponse.fromJson(Map<String, dynamic> json) =>
      ListQuestionResponse(
        isSuccessed: json["isSuccessed"],
        message: json["message"],
        resultObj: List<ResultObj>.from(
            json["resultObj"].map((x) => ResultObj.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "isSuccessed": isSuccessed,
        "message": message,
        if (resultObj != null)
          "resultObj": List<dynamic>.from(resultObj!.map((x) => x.toJson())),
      };
}

class ResultObj {
  final String id;
  final String subId;
  final String title;
  final String content;
  final DateTime createAt;
  final dynamic updateAt;
  final List<dynamic> tags;
  final UserShort userShort;
  final int viewNumber;
  final int commentNumber;
  final int saveNumber;

  ResultObj({
    required this.id,
    required this.subId,
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
    String? subId,
    String? title,
    String? content,
    DateTime? createAt,
    dynamic updateAt,
    List<dynamic>? tags,
    UserShort? userShort,
    int? viewNumber,
    int? commentNumber,
    int? saveNumber,
  }) =>
      ResultObj(
        id: id ?? this.id,
        subId: subId ?? this.subId,
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
        subId: json["subId"],
        title: json["title"],
        content: json["content"],
        createAt: DateTime.parse(json["createdAt"]),
        updateAt: json["updatedAt"],
        tags: List<dynamic>.from(json["tags"].map((x) => x)),
        userShort: UserShort.fromJson(json["userShort"]),
        viewNumber: json["viewNumber"],
        commentNumber: json["commentNumber"],
        saveNumber: json["saveNumber"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "subId": subId,
        "title": title,
        "content": content,
        "createAt": createAt.toIso8601String(),
        "updateAt": updateAt,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "userShort": userShort.toJson(),
        "viewNumber": viewNumber,
        "commentNumber": commentNumber,
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
