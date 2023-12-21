class VoteResponse {
  final bool isSuccessed;
  final String message;
  final ResultObj resultObj;

  VoteResponse({
    required this.isSuccessed,
    required this.message,
    required this.resultObj,
  });

  VoteResponse copyWith({
    bool? isSuccessed,
    String? message,
    ResultObj? resultObj,
  }) =>
      VoteResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory VoteResponse.fromJson(Map<String, dynamic> json) => VoteResponse(
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
