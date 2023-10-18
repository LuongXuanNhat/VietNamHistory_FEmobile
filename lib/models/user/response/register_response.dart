import 'dart:convert';

class RegisterResponse {
  RegisterResponse({
    this.data,
  });

  RegisterData? data;

  RegisterResponse copyWith({
    RegisterData? data,
  }) =>
      RegisterResponse(
        data: data ?? this.data,
      );

  factory RegisterResponse.fromRawJson(String str) =>
      RegisterResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      RegisterResponse(
        data: json["data"] == null ? null : RegisterData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? null : data!.toJson(),
      };
}

class RegisterData {
  RegisterData({this.isSuccess, this.message, this.token});
  bool? isSuccess;
  String? message;
  String? token;

  RegisterData copyWith({
    bool? isSuccess,
    String? message,
    String? token,
  }) =>
      RegisterData(
          isSuccess: isSuccess ?? this.isSuccess,
          message: message ?? this.message,
          token: token ?? this.token);

  factory RegisterData.fromRawJson(String str) =>
      RegisterData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterData.fromJson(Map<String, dynamic> json) => RegisterData(
        isSuccess: json["isSuccessed"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() =>
      {"isSuccessed": isSuccess, "message": message, "resultObj": token};
}
