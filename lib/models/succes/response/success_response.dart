class SuccesResponse {
  bool? isSuccessed;
  String? message;
  String? resultObj;

  SuccesResponse({
    this.isSuccessed,
    this.message,
    this.resultObj,
  });

  SuccesResponse copyWith({
    bool? isSuccessed,
    String? message,
    String? resultObj,
  }) =>
      SuccesResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory SuccesResponse.fromJson(Map<String, dynamic> json) {
    return SuccesResponse(
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
