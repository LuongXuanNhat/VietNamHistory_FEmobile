import 'dart:convert';

class UpdateProfileRequest {
  UpdateProfileRequest({
    this.email,
    this.fullname,
    this.dateOfBirth,
    this.gender,
    this.phoneNumber,
    this.image,
  });

  String? email;
  String? fullname;
  dynamic dateOfBirth;
  dynamic gender;
  String? phoneNumber;
  dynamic image;

  UpdateProfileRequest copyWith({
    String? email,
    String? fullname,
    dynamic dateOfBirth,
    dynamic gender,
    String? phoneNumber,
    dynamic image,
  }) =>
      UpdateProfileRequest(
        email: email ?? this.email,
        fullname: fullname ?? this.fullname,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        gender: gender ?? this.gender,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        image: image ?? this.image,
      );

  factory UpdateProfileRequest.fromRawJson(String str) =>
      UpdateProfileRequest.fromJson(json.decode(str));
  String toRawJsom() => json.encode(toJson());

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) =>
      UpdateProfileRequest(
        email: json["Email"],
        fullname: json["Fullname"],
        dateOfBirth: json["DateOfBirth"],
        gender: json["Gender"],
        phoneNumber: json["PhoneNumber"],
        image: json["Image"],
      );

  Map<String, dynamic> toJson() => {
        "Email": email,
        "Fullname": fullname,
        "DateOfBirth": dateOfBirth,
        "Gender": gender,
        "PhoneNumber": phoneNumber,
        "Image": image,
      };
}
