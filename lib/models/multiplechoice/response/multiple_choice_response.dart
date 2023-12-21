class MultipleChoiceResponse {
  final bool isSuccessed;
  final String message;
  final List<ResultObj> resultObj;

  MultipleChoiceResponse({
    required this.isSuccessed,
    required this.message,
    required this.resultObj,
  });

  MultipleChoiceResponse copyWith({
    bool? isSuccessed,
    String? message,
    List<ResultObj>? resultObj,
  }) =>
      MultipleChoiceResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory MultipleChoiceResponse.fromJson(Map<String, dynamic> json) =>
      MultipleChoiceResponse(
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
  final String title;
  final String description;
  final DateTime createdAt;
  final dynamic updatedAt;
  final int numberQuiz;
  final int workTime;
  final UserShort userShort;
  final List<dynamic> quizs;

  ResultObj({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.workTime,
    required this.userShort,
    required this.numberQuiz,
    required this.quizs,
  });

  ResultObj copyWith({
    String? id,
    String? title,
    String? description,
    DateTime? createdAt,
    dynamic updatedAt,
    int? numberQuiz,
    int? workTime,
    UserShort? userShort,
    List<dynamic>? quizs,
  }) =>
      ResultObj(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        workTime: workTime ?? this.workTime,
        numberQuiz: numberQuiz ?? this.numberQuiz,
        userShort: userShort ?? this.userShort,
        quizs: quizs ?? this.quizs,
      );

  factory ResultObj.fromJson(Map<String, dynamic> json) => ResultObj(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"],
        workTime: json["workTime"],
        numberQuiz: json["numberQuiz"],
        userShort: UserShort.fromJson(json["userShort"]),
        quizs: List<dynamic>.from(json["quizs"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt,
        "workTime": workTime,
        "numberQuiz": numberQuiz,
        "userShort": userShort.toJson(),
        "quizs": List<dynamic>.from(quizs.map((x) => x)),
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
