import 'dart:convert';

class LoginResponse {
  bool isSuccessed;
  String message;
  dynamic resultObj;

  LoginResponse({
    required this.isSuccessed,
    required this.message,
    required this.resultObj,
  });

  LoginResponse copyWith({
    bool? isSuccessed,
    String? message,
    dynamic resultObj,
  }) =>
      LoginResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory LoginResponse.fromRawJson(String str) =>
      LoginResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        isSuccessed: json["isSuccessed"],
        message: json["message"],
        resultObj: json["resultObj"],
      );

  Map<String, dynamic> toJson() => {
        "isSuccessed": isSuccessed,
        "message": message,
        "resultObj": resultObj,
      };
}
