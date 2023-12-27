import 'dart:convert';

class UserResponse {
  UserResponse({this.success, this.message, this.data});
  bool? success;
  String? message;
  User? data;
  UserResponse copyWith({bool? success, String? message, User? data}) =>
      UserResponse(
          success: success ?? this.success,
          message: message ?? this.message,
          data: data ?? this.data);

  factory UserResponse.fromRawJson(String str) =>
      UserResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
      success: json["isSuccessed"],
      message: json["message"],
      data:
          json["resultObj"] == null ? null : User.fromJson(json["resultObj"]));

  Map<String, dynamic> toJson() => {
        "isSuccessed": success,
        "message": message,
        "resultObj": data == null ? null : data!.toJson()
      };
}

class User {
  final String? fullname;
  final String? userName;
  final DateTime? dateOfBirth;
  final int? gender;
  final String? email;
  final dynamic phoneNumber;
  final dynamic introduction;

  User({
    this.fullname,
    this.userName,
    this.dateOfBirth,
    this.gender,
    this.email,
    this.phoneNumber,
    this.introduction,
  });

  User copyWith({
    String? fullname,
    String? userName,
    DateTime? dateOfBirth,
    int? gender,
    String? email,
    dynamic phoneNumber,
    dynamic introduction,
  }) =>
      User(
        fullname: fullname ?? this.fullname,
        userName: userName ?? this.userName,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        gender: gender ?? this.gender,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        introduction: introduction ?? this.introduction,
      );

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        fullname: json["fullname"],
        userName: json["userName"],
        dateOfBirth: DateTime.parse(json["dateOfBirth"]),
        gender: json["gender"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        introduction: json["introduction"],
      );

  Map<String, dynamic> toJson() => {
        "fullname": fullname,
        "userName": userName,
        "dateOfBirth": dateOfBirth!.toIso8601String(),
        "gender": gender,
        "email": email,
        "phoneNumber": phoneNumber,
        "introduction": introduction,
      };
}
