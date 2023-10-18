import 'dart:convert';

class UserResponse {
  UserResponse({this.data});
  User? data;
  UserResponse copyWith({User? data}) => UserResponse(data: data ?? this.data);

  factory UserResponse.fromRawJson(String str) =>
      UserResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
      data:
          json["resultObj"] == null ? null : User.fromJson(json["resultObj"]));

  Map<String, dynamic> toJson() =>
      {"resultObj": data == null ? null : data!.toJson()};
}

class User {
  User(
      {this.fullname,
      this.username,
      this.email,
      this.phoneNumber,
      this.dateOfBirth,
      this.gender,
      this.image});
  String? fullname;
  String? username;
  String? email;
  String? phoneNumber;
  dynamic dateOfBirth;
  dynamic gender;
  dynamic image;

  User copyWith({
    String? fullname,
    String? username,
    String? email,
    String? phoneNumber,
    dynamic dateOfBirth,
    dynamic gender,
    dynamic image,
  }) =>
      User(
          fullname: fullname ?? this.fullname,
          username: username ?? this.username,
          email: email ?? this.email,
          phoneNumber: phoneNumber ?? this.phoneNumber,
          dateOfBirth: dateOfBirth ?? this.dateOfBirth,
          gender: gender ?? this.gender,
          image: image ?? this.image);

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
      fullname: json["fullname"],
      username: json["username"],
      email: json["email"],
      phoneNumber: json["phoneNumber"],
      dateOfBirth: json["dateOfBirth"],
      gender: json["gender"],
      image: json["image"]);

  Map<String, dynamic> toJson() => {
        'fullname': fullname,
        'username': username,
        'email': email,
        'phoneNumber': phoneNumber,
        'dateOfBirth': dateOfBirth,
        'gender': gender,
        'image': image
      };
}
