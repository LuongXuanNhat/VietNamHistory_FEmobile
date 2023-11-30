class SuccesResponseList {
  final bool isSuccessed;
  final String message;
  final List<String> resultObj;

  SuccesResponseList({
    required this.isSuccessed,
    required this.message,
    required this.resultObj,
  });

  SuccesResponseList copyWith({
    bool? isSuccessed,
    String? message,
    List<String>? resultObj,
  }) =>
      SuccesResponseList(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory SuccesResponseList.fromJson(Map<String, dynamic> json) =>
      SuccesResponseList(
        isSuccessed: json["isSuccessed"],
        message: json["message"],
        resultObj: List<String>.from(json["resultObj"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "isSuccessed": isSuccessed,
        "message": message,
        "resultObj": List<dynamic>.from(resultObj.map((x) => x)),
      };
}
