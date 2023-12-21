import 'dart:convert';

class ResetPasswordRequest {
  final String email;
  final String password;
  final String token;

  ResetPasswordRequest({
    required this.email,
    required this.password,
    required this.token,
  });

  ResetPasswordRequest copyWith({
    String? email,
    String? password,
    String? token,
  }) =>
      ResetPasswordRequest(
        email: email ?? this.email,
        password: password ?? this.password,
        token: token ?? this.token,
      );

  factory ResetPasswordRequest.fromRawJson(String str) =>
      ResetPasswordRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      ResetPasswordRequest(
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
