import 'dart:convert';

class ChangePasswordRequest {
  ChangePasswordRequest({this.email, this.currentPassword, this.newPassword});
  String? email;
  String? currentPassword;
  String? newPassword;

  ChangePasswordRequest copyWith({
    String? email,
    String? currentPassword,
    String? newPassword,
  }) =>
      ChangePasswordRequest(
        email: email ?? this.email,
        currentPassword: currentPassword ?? this.currentPassword,
        newPassword: newPassword ?? this.newPassword,
      );

  factory ChangePasswordRequest.fromRawJson(String str) =>
      ChangePasswordRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChangePasswordRequest.fromJson(Map<String, dynamic> json) =>
      ChangePasswordRequest(
        email: json["email"],
        currentPassword: json["password"],
        newPassword: json["newPassword"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": currentPassword,
        "newPassword": newPassword,
      };
}
