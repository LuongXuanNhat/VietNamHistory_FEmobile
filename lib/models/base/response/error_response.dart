import 'dart:convert';

class ErrorResponse {
  ErrorResponse({this.error, this.errorDescription, this.message});

  String? error;
  String? errorDescription;
  String? message;

  ErrorResponse copyWith(
          {String? erorr, String? erorrDescription, String? message}) =>
      ErrorResponse(
          error: erorr ?? error,
          errorDescription: erorrDescription ?? errorDescription,
          message: message ?? this.message);

  factory ErrorResponse.fromRawJson(String str) =>
      ErrorResponse.fromJson(json.decode(str));
  String toRawJson() => json.encode(toJson());

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => ErrorResponse(
        error: json["error"],
        errorDescription: json["errorDescription"],
        message: json["message"],
      );
  Map<String, dynamic> toJson() => {
        "error": error,
        "error_description": errorDescription,
        "message": message
      };
}
