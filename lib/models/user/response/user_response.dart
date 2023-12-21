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
  User(
      {this.fullname,
      this.username,
      this.email,
      this.phoneNumber,
      this.introduction,
      this.dateOfBirth,
      this.gender,
      this.image});
  String? fullname;
  String? username;
  String? introduction;
  String? email;
  String? phoneNumber;
  DateTime? dateOfBirth;
  dynamic gender;
  dynamic image;

  User copyWith({
    String? fullname,
    String? username,
    String? email,
    String? introduction,
    String? phoneNumber,
    DateTime? dateOfBirth,
    dynamic gender,
    dynamic image,
  }) =>
      User(
          fullname: fullname ?? this.fullname,
          username: username ?? this.username,
          email: email ?? this.email,
          introduction: introduction ?? this.introduction,
          phoneNumber: phoneNumber ?? this.phoneNumber,
          dateOfBirth: dateOfBirth ?? this.dateOfBirth,
          gender: gender ?? this.gender,
          image: image ?? this.image);

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
      fullname: json["fullname"],
      username: json["userName"],
      email: json["email"],
      introduction: json["introduction"],
      phoneNumber: json["phoneNumber"],
      dateOfBirth: DateTime.parse(json["dateOfBirth"]),
      gender: json["gender"],
      image: json["image"]);

  Map<String, dynamic> toJson() => {
        'fullname': fullname,
        'userName': username,
        'email': email,
        'introduction': introduction,
        'phoneNumber': phoneNumber,
        'dateOfBirth': dateOfBirth!.toIso8601String(),
        'gender': gender,
        'image': image
      };
}
