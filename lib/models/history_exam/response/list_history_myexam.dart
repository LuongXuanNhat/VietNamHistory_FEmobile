class ListHistoryMyExam {
  final bool? isSuccessed;
  final String? message;
  final List<ResultObj>? resultObj;

  ListHistoryMyExam({
    this.isSuccessed,
    this.message,
    this.resultObj,
  });

  ListHistoryMyExam copyWith({
    bool? isSuccessed,
    String? message,
    List<ResultObj>? resultObj,
  }) =>
      ListHistoryMyExam(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory ListHistoryMyExam.fromJson(Map<String, dynamic> json) =>
      ListHistoryMyExam(
        isSuccessed: json["isSuccessed"],
        message: json["message"],
        resultObj: json["resultObj"] == null
            ? null
            : List<ResultObj>.from(
                json["resultObj"].map((x) => ResultObj.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "isSuccessed": isSuccessed,
        "message": message,
        "resultObj": resultObj == null
            ? null
            : List<dynamic>.from(resultObj!.map((x) => x.toJson())),
      };
}

class ResultObj {
  final String? id;
  final MultipleChoiceResponseDto? multipleChoiceResponseDto;
  final UserShort? userShortDto;
  final int? scores;
  final int? completionTime;
  final DateTime? starDate;

  ResultObj({
    this.id,
    this.multipleChoiceResponseDto,
    this.userShortDto,
    this.scores,
    this.completionTime,
    this.starDate,
  });

  ResultObj copyWith({
    String? id,
    MultipleChoiceResponseDto? multipleChoiceResponseDto,
    UserShort? userShortDto,
    int? scores,
    int? completionTime,
    DateTime? starDate,
  }) =>
      ResultObj(
        id: id ?? this.id,
        multipleChoiceResponseDto:
            multipleChoiceResponseDto ?? this.multipleChoiceResponseDto,
        userShortDto: userShortDto ?? this.userShortDto,
        scores: scores ?? this.scores,
        completionTime: completionTime ?? this.completionTime,
        starDate: starDate ?? this.starDate,
      );

  factory ResultObj.fromJson(Map<String, dynamic> json) => ResultObj(
        id: json["id"],
        multipleChoiceResponseDto: json["multipleChoiceResponseDto"] == null
            ? null
            : MultipleChoiceResponseDto.fromJson(
                json["multipleChoiceResponseDto"]),
        userShortDto: json["userShortDto"] == null
            ? null
            : UserShort.fromJson(json["userShortDto"]),
        scores: json["scores"],
        completionTime: json["completionTime"],
        starDate:
            json["starDate"] == null ? null : DateTime.parse(json["starDate"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "multipleChoiceResponseDto": multipleChoiceResponseDto == null
            ? null
            : multipleChoiceResponseDto!.toJson(),
        "userShortDto": userShortDto == null ? null : userShortDto!.toJson(),
        "scores": scores,
        "completionTime": completionTime,
        "starDate": starDate == null ? null : starDate!.toIso8601String(),
      };
}

class MultipleChoiceResponseDto {
  final String? id;
  final String? title;
  final String? description;
  final DateTime? createdAt;
  final dynamic updatedAt;
  final int? workTime;
  final UserShort? userShort;
  final List<dynamic>? quizs;

  MultipleChoiceResponseDto({
    this.id,
    this.title,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.workTime,
    this.userShort,
    this.quizs,
  });

  MultipleChoiceResponseDto copyWith({
    String? id,
    String? title,
    String? description,
    DateTime? createdAt,
    dynamic updatedAt,
    int? workTime,
    UserShort? userShort,
    List<dynamic>? quizs,
  }) =>
      MultipleChoiceResponseDto(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        workTime: workTime ?? this.workTime,
        userShort: userShort ?? this.userShort,
        quizs: quizs ?? this.quizs,
      );

  factory MultipleChoiceResponseDto.fromJson(Map<String, dynamic> json) =>
      MultipleChoiceResponseDto(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"],
        workTime: json["workTime"],
        userShort: json["userShort"] == null
            ? null
            : UserShort.fromJson(json["userShort"]),
        quizs: json["quizs"] == null
            ? null
            : List<dynamic>.from(json["quizs"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
        "updatedAt": updatedAt,
        "workTime": workTime,
        "userShort": userShort == null ? null : userShort!.toJson(),
        "quizs":
            quizs == null ? null : List<dynamic>.from(quizs!.map((x) => x)),
      };
}

class UserShort {
  final String? id;
  final String? fullName;
  final String? image;

  UserShort({
    this.id,
    this.fullName,
    this.image,
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
