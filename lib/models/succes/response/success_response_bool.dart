class SuccesResponseBool {
  bool? isSuccessed;
  String? message;
  bool? resultObj;

  SuccesResponseBool({
    this.isSuccessed,
    this.message,
    this.resultObj,
  });

  SuccesResponseBool copyWith({
    bool? isSuccessed,
    String? message,
    bool? resultObj,
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
      resultObj: json["resultObj"],
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
