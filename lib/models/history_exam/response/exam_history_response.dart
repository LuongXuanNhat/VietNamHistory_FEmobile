class ExamHistoryResponse {
  final bool? isSuccessed;
  final String? message;
  final ResultObj? resultObj;

  ExamHistoryResponse({
    this.isSuccessed,
    this.message,
    this.resultObj,
  });

  ExamHistoryResponse copyWith({
    bool? isSuccessed,
    String? message,
    ResultObj? resultObj,
  }) =>
      ExamHistoryResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory ExamHistoryResponse.fromJson(Map<String, dynamic> json) =>
      ExamHistoryResponse(
        isSuccessed: json["isSuccessed"],
        message: json["message"],
        resultObj: ResultObj.fromJson(json["resultObj"]),
      );

  Map<String, dynamic> toJson() => {
        "isSuccessed": isSuccessed,
        "message": message,
        "resultObj": resultObj?.toJson(),
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
        multipleChoiceResponseDto: MultipleChoiceResponseDto.fromJson(
            json["multipleChoiceResponseDto"]),
        userShortDto: UserShort.fromJson(json["userShortDto"]),
        scores: json["scores"],
        completionTime: json["completionTime"],
        starDate: DateTime.parse(json["starDate"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "multipleChoiceResponseDto": multipleChoiceResponseDto?.toJson(),
        "userShortDto": userShortDto?.toJson(),
        "scores": scores,
        "completionTime": completionTime,
        "starDate": starDate?.toIso8601String(),
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
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"],
        workTime: json["workTime"],
        userShort: UserShort.fromJson(json["userShort"]),
        quizs: List<dynamic>.from(json["quizs"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt,
        "workTime": workTime,
        "userShort": userShort?.toJson(),
        "quizs": List<dynamic>.from(quizs!.map((x) => x)),
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
