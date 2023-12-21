class VoteAnswerResponse {
  final bool isSuccessed;
  final String message;
  final ResultObj resultObj;

  VoteAnswerResponse({
    required this.isSuccessed,
    required this.message,
    required this.resultObj,
  });

  VoteAnswerResponse copyWith({
    bool? isSuccessed,
    String? message,
    ResultObj? resultObj,
  }) =>
      VoteAnswerResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory VoteAnswerResponse.fromJson(Map<String, dynamic> json) =>
      VoteAnswerResponse(
        isSuccessed: json["isSuccessed"],
        message: json["message"],
        resultObj: ResultObj.fromJson(json["resultObj"]),
      );

  Map<String, dynamic> toJson() => {
        "isSuccessed": isSuccessed,
        "message": message,
        "resultObj": resultObj.toJson(),
      };
}

class ResultObj {
  final bool check;
  final int quantity;

  ResultObj({
    required this.check,
    required this.quantity,
  });

  ResultObj copyWith({
    bool? check,
    int? quantity,
  }) =>
      ResultObj(
        check: check ?? this.check,
        quantity: quantity ?? this.quantity,
      );

  factory ResultObj.fromJson(Map<String, dynamic> json) => ResultObj(
        check: json["check"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "check": check,
        "quantity": quantity,
      };
}
