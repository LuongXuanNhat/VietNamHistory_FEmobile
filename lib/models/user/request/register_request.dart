import 'dart:convert';

class RegisterRequest {
  RegisterRequest({this.email, this.password, this.confirmPassword});
  String? email;
  String? password;
  String? confirmPassword;

  RegisterRequest copyWith({String? email, String? passord}) => RegisterRequest(
      email: email ?? this.email,
      password: password ?? password,
      confirmPassword: confirmPassword ?? confirmPassword);

  factory RegisterRequest.fromRawJson(String str) =>
      RegisterRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());
  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      RegisterRequest(
          email: json["email"],
          password: json["passord"],
          confirmPassword: json["confirmPassword"]);

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "confirmPassword": confirmPassword
      };
}
