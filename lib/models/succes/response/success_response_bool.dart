class SuccesResponseBool {
  bool? isSuccessed;
  String? message;
  ResultObj? resultObj;

  SuccesResponseBool({
    this.isSuccessed,
    this.message,
    this.resultObj,
  });

  SuccesResponseBool copyWith({
    bool? isSuccessed,
    String? message,
    ResultObj? resultObj,
  }) =>
      SuccesResponseBool(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory SuccesResponseBool.fromJson(Map<String, dynamic> json) {
    return SuccesResponseBool(
      isSuccessed: json["isSuccessed"],
      message: json["message"],
      resultObj: json["resultObj"] == null
          ? null
          : ResultObj.fromJson(json["resultObj"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "isSuccessed": isSuccessed,
      "message": message,
      "resultObj": resultObj,
    };
  }
}

class ResultObj {
  bool item1;
  int item2;

  ResultObj({
    required this.item1,
    required this.item2,
  });

  ResultObj copyWith({
    bool? item1,
    int? item2,
  }) =>
      ResultObj(
        item1: item1 ?? this.item1,
        item2: item2 ?? this.item2,
      );

  factory ResultObj.fromJson(Map<String, dynamic> json) => ResultObj(
        item1: json["check"],
        item2: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "check": item1,
        "quantity": item2,
      };
}
