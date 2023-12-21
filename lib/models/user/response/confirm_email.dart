class ForgotPassConfirmEmail {
  final bool isSuccessed;
  final String message;
  final ResultObj resultObj;

  ForgotPassConfirmEmail({
    required this.isSuccessed,
    required this.message,
    required this.resultObj,
  });

  ForgotPassConfirmEmail copyWith({
    bool? isSuccessed,
    String? message,
    ResultObj? resultObj,
  }) =>
      ForgotPassConfirmEmail(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory ForgotPassConfirmEmail.fromJson(Map<String, dynamic> json) =>
      ForgotPassConfirmEmail(
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
  final String email;
  final dynamic password;
  final String token;

  ResultObj({
    required this.email,
    required this.password,
    required this.token,
  });

  ResultObj copyWith({
    String? email,
    dynamic password,
    String? token,
  }) =>
      ResultObj(
        email: email ?? this.email,
        password: password ?? this.password,
        token: token ?? this.token,
      );

  factory ResultObj.fromJson(Map<String, dynamic> json) => ResultObj(
        email: json["email"],
        password: json["password"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "token": token,
      };
}
