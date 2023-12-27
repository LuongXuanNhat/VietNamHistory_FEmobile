class ForgotPassSendEmail {
  bool isSuccessed;
  String message;
  ResultObj? resultObj;

  ForgotPassSendEmail({
    required this.isSuccessed,
    required this.message,
    this.resultObj,
  });

  ForgotPassSendEmail copyWith({
    bool? isSuccessed,
    String? message,
    ResultObj? resultObj,
  }) =>
      ForgotPassSendEmail(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory ForgotPassSendEmail.fromJson(Map<String, dynamic> json) =>
      ForgotPassSendEmail(
        isSuccessed: json["isSuccessed"],
        message: json["message"],
        resultObj: ResultObj.fromJson(json["resultObj"] ?? {}),
      );

  Map<String, dynamic> toJson() => {
        "isSuccessed": isSuccessed,
        "message": message,
        "resultObj": resultObj!.toJson(),
      };
}

class ResultObj {
  String? email;
  String? password;

  ResultObj({
    this.email,
    this.password,
  });

  ResultObj copyWith({
    String? email,
    String? password,
  }) =>
      ResultObj(
        email: email ?? this.email,
        password: password ?? this.password,
      );

  factory ResultObj.fromJson(Map<String, dynamic> json) => ResultObj(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
