import 'dart:convert';

class LoginResponse {
  LoginResponse({this.isSuccess, this.message, this.token});

  bool? isSuccess;
  String? message;
  String? token;

  LoginResponse coppyWith({bool? isSuccess, String? message, String? token}) =>
      LoginResponse(
          isSuccess: isSuccess ?? this.isSuccess,
          message: message ?? this.message,
          token: token ?? this.token);

  factory LoginResponse.fromRawJson(String str) =>
      LoginResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
      isSuccess: json["isSuccessed"],
      message: json["message"],
      token: json["resultObj"]);

  Map<String, dynamic> toJson() =>
      {"isSuccessed": isSuccess, "message": message, "resultObj": token};
}
