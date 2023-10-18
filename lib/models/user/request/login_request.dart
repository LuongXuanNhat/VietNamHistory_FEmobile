import 'dart:convert';

class LoginRequest {
  LoginRequest({this.email, this.password});

  String? email;
  String? password;

  LoginRequest coppyWith({String? email, String? password}) => LoginRequest(
      email: email ?? this.email, password: password ?? this.password);

  factory LoginRequest.fromRawJson(String str) =>
      LoginRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequest(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {"email": email, "password": password};
}

class LoginSocial {
  LoginSocial({this.type, this.id, this.email, this.name});

  String? type;
  String? id;
  String? email;
  String? name;

  LoginSocial coppyWith(
          {String? type, String? id, String? email, String? name}) =>
      LoginSocial(
          type: type ?? this.type,
          id: id ?? this.id,
          email: email ?? this.email,
          name: name ?? this.name);

  factory LoginSocial.fromRawJson(String str) =>
      LoginSocial.fromJson(json.decode(json.decode(str)));
  String toRawJson() => json.encode(toJson());

  factory LoginSocial.fromJson(Map<String, dynamic> json) => LoginSocial(
      type: json["type"],
      id: json["id"],
      email: json["email"],
      name: json["name"]);

  Map<String, dynamic> toJson() =>
      {"type": type, "id": id, "email": email, "name": name};
}
