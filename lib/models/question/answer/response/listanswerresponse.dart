class ListAnswerResponse {
  final bool isSuccessed;
  final String message;
  final List<ResultObjs> resultObj;

  ListAnswerResponse({
    required this.isSuccessed,
    required this.message,
    required this.resultObj,
  });

  ListAnswerResponse copyWith({
    bool? isSuccessed,
    String? message,
    List<ResultObjs>? resultObj,
  }) =>
      ListAnswerResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory ListAnswerResponse.fromJson(Map<String, dynamic> json) =>
      ListAnswerResponse(
        isSuccessed: json["isSuccessed"],
        message: json["message"],
        resultObj: List<ResultObjs>.from(
            json["resultObj"].map((x) => ResultObjs.fromJson(x))),
      );
}

class ResultObjs {
  final String id;
  final String authorId;
  final String questionId;
  final UserShort userShort;
  final String content;
  final DateTime createdAt;
  final dynamic updatedAt;
  final bool confirm;
  final bool mostConfirm;
  final dynamic voteNumber;
  final List<SubAnswer?>? subAnswer;

  ResultObjs({
    required this.id,
    required this.authorId,
    required this.questionId,
    required this.userShort,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
    required this.confirm,
    required this.mostConfirm,
    required this.subAnswer,
    this.voteNumber,
  });

  ResultObjs copyWith(
          {String? id,
          String? authorId,
          String? questionId,
          UserShort? userShort,
          String? content,
          DateTime? createdAt,
          dynamic updatedAt,
          bool? confirm,
          bool? mostConfirm,
          List<SubAnswer?>? subAnswer,
          dynamic voteNumber}) =>
      ResultObjs(
          id: id ?? this.id,
          authorId: authorId ?? this.authorId,
          questionId: questionId ?? this.questionId,
          userShort: userShort ?? this.userShort,
          content: content ?? this.content,
          createdAt: createdAt ?? this.createdAt,
          updatedAt: updatedAt ?? this.updatedAt,
          confirm: confirm ?? this.confirm,
          mostConfirm: mostConfirm ?? this.mostConfirm,
          subAnswer: subAnswer ?? this.subAnswer,
          voteNumber: voteNumber ?? this.voteNumber);

  factory ResultObjs.fromJson(Map<String, dynamic> json) => ResultObjs(
        id: json["id"],
        authorId: json["authorId"],
        questionId: json["questionId"],
        userShort: UserShort.fromJson(json["userShort"]),
        content: json["content"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"],
        confirm: json["confirm"],
        mostConfirm: json["mostConfirm"],
        voteNumber: json["voteNumber"],
        subAnswer: List<SubAnswer>.from(
            json["subAnswer"].map((x) => SubAnswer.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "authorId": authorId,
        "questionId": questionId,
        "userShort": userShort.toJson(),
        "content": content,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt,
        "voteNumber": voteNumber,
        "confirm": confirm,
        "mostConfirm": mostConfirm,
        "subAnswer":
            List<dynamic>.from(subAnswer!.map((x) => x?.toJson()) ?? []),
      };
}

class SubAnswer {
  final String id;
  final String preAnswerId;
  final String authorId;
  final String content;
  final DateTime createdAt;
  final dynamic updateAt;
  final UserShort userShort;

  SubAnswer({
    required this.id,
    required this.preAnswerId,
    required this.authorId,
    required this.content,
    required this.createdAt,
    required this.updateAt,
    required this.userShort,
  });

  SubAnswer copyWith({
    String? id,
    String? preAnswerId,
    String? authorId,
    String? content,
    DateTime? createdAt,
    dynamic updateAt,
    UserShort? userShort,
  }) =>
      SubAnswer(
        id: id ?? this.id,
        preAnswerId: preAnswerId ?? this.preAnswerId,
        authorId: authorId ?? this.authorId,
        content: content ?? this.content,
        createdAt: createdAt ?? this.createdAt,
        updateAt: updateAt ?? this.updateAt,
        userShort: userShort ?? this.userShort,
      );

  factory SubAnswer.fromJson(Map<String, dynamic> json) => SubAnswer(
        id: json["id"],
        preAnswerId: json["preAnswerId"],
        authorId: json["authorId"],
        content: json["content"],
        createdAt: DateTime.parse(json["createdAt"]),
        updateAt: json["updatedAt"],
        userShort: UserShort.fromJson(json["userShort"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "preAnswerId": preAnswerId,
        "authorId": authorId,
        "content": content,
        "createdAt": createdAt,
        "updatedAt": updateAt,
        "userShort": userShort.toJson(),
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
