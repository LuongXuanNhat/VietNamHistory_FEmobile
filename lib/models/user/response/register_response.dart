import 'dart:convert';

// class RegisterResponse {
//   RegisterResponse({this.isSuccess, this.message, this.token});

//   bool? isSuccess;
//   String? message;
//   String? token;

//   RegisterResponse coppyWith(
//           {bool? isSuccess, String? message, String? token}) =>
//       RegisterResponse(
//           isSuccess: isSuccess ?? this.isSuccess,
//           message: message ?? this.message,
//           token: token ?? this.token);

//   factory RegisterResponse.fromRawJson(String str) =>
//       RegisterResponse.fromJson(json.decode(str));

//   String toRawJson() => json.encode(toJson());

//   factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
//       RegisterResponse(
//           isSuccess: json["isSuccessed"],
//           message: json["message"],
//           token: json["resultObj"]);

//   Map<String, dynamic> toJson() =>
//       {"isSuccessed": isSuccess, "message": message, "resultObj": token};
// }

class RegisterResponse {
  bool? isSuccessed;
  String? message;
  bool? resultObj;

  RegisterResponse({
    this.isSuccessed,
    this.message,
    this.resultObj,
  });

  RegisterResponse copyWith({
    bool? isSuccessed,
    String? message,
    bool? resultObj,
  }) =>
      RegisterResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory RegisterResponse.fromRawJson(String str) =>
      RegisterResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      RegisterResponse(
          isSuccessed: json["isSuccessed"],
          message: json["message"],
          resultObj: json["resultObj"]);

  Map<String, dynamic> toJson() =>
      {"isSuccessed": isSuccessed, "message": message, "resultObj": resultObj};
}
