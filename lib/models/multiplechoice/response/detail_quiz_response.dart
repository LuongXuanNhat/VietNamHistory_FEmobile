class DetailQuizResponse {
  final bool isSuccessed;
  final String message;
  final ListQuiz resultObj;

  DetailQuizResponse({
    required this.isSuccessed,
    required this.message,
    required this.resultObj,
  });

  DetailQuizResponse copyWith({
    bool? isSuccessed,
    String? message,
    ListQuiz? resultObj,
  }) =>
      DetailQuizResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory DetailQuizResponse.fromJson(Map<String, dynamic> json) =>
      DetailQuizResponse(
        isSuccessed: json["isSuccessed"],
        message: json["message"],
        resultObj: ListQuiz.fromJson(json["resultObj"]),
      );

  Map<String, dynamic> toJson() => {
        "isSuccessed": isSuccessed,
        "message": message,
        "resultObj": resultObj.toJson(),
      };
}

class ListQuiz {
  final String id;
  final String title;
  final String description;
  final DateTime createdAt;
  final dynamic updatedAt;
  final int workTime;

  final UserShort userShort;
  final List<Quiz> quizs;

  ListQuiz({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.workTime,
    required this.userShort,
    required this.quizs,
  });

  String timeInMinits() => "${(workTime / 60).ceil()} mins";

  ListQuiz copyWith({
    String? id,
    String? title,
    String? description,
    DateTime? createdAt,
    dynamic updatedAt,
    int? workTime,
    UserShort? userShort,
    List<Quiz>? quizs,
  }) =>
      ListQuiz(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        workTime: workTime ?? this.workTime,
        userShort: userShort ?? this.userShort,
        quizs: quizs ?? this.quizs,
      );

  factory ListQuiz.fromJson(Map<String, dynamic> json) => ListQuiz(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"],
        workTime: json["workTime"],
        userShort: UserShort.fromJson(json["userShort"]),
        quizs: List<Quiz>.from(json["quizs"].map((x) => Quiz.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt,
        "workTime": workTime,
        "userShort": userShort.toJson(),
        "quizs": List<dynamic>.from(quizs.map((x) => x.toJson())),
      };
}

class Quiz {
  final String id;
  final String content;
  final List<QuizAnswer> quizAnswers;
  String? selectedAnswer;

  Quiz({
    required this.id,
    required this.content,
    required this.quizAnswers,
  });

  Quiz copyWith({
    String? id,
    String? content,
    List<QuizAnswer>? quizAnswers,
  }) =>
      Quiz(
        id: id ?? this.id,
        content: content ?? this.content,
        quizAnswers: quizAnswers ?? this.quizAnswers,
      );

  factory Quiz.fromJson(Map<String, dynamic> json) => Quiz(
        id: json["id"],
        content: json["content"],
        quizAnswers: List<QuizAnswer>.from(
            json["quizAnswers"].map((x) => QuizAnswer.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "content": content,
        "quizAnswers": List<dynamic>.from(quizAnswers.map((x) => x.toJson())),
      };
}

class QuizAnswer {
  final String id;
  final String content;
  final bool isCorrect;

  QuizAnswer({
    required this.id,
    required this.content,
    required this.isCorrect,
  });

  QuizAnswer copyWith({
    String? id,
    String? content,
    bool? isCorrect,
  }) =>
      QuizAnswer(
        id: id ?? this.id,
        content: content ?? this.content,
        isCorrect: isCorrect ?? this.isCorrect,
      );

  factory QuizAnswer.fromJson(Map<String, dynamic> json) => QuizAnswer(
        id: json["id"],
        content: json["content"],
        isCorrect: json["isCorrect"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "content": content,
        "isCorrect": isCorrect,
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
