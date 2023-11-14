import 'dart:convert';

class ReportPostRequest {
  String? postId;
  String? userId;
  String? reportId;
  String? description;
  DateTime? reportDate;
  bool? checked;

  ReportPostRequest({
    this.postId,
    this.userId,
    this.reportId,
    this.description,
    this.reportDate,
    this.checked,
  });

  ReportPostRequest copyWith({
    String? postId,
    String? userId,
    String? reportId,
    String? description,
    DateTime? reportDate,
    bool? checked,
  }) =>
      ReportPostRequest(
        postId: postId ?? this.postId,
        userId: userId ?? this.userId,
        reportId: reportId ?? this.reportId,
        description: description ?? this.description,
        reportDate: reportDate ?? this.reportDate,
        checked: checked ?? this.checked,
      );

  factory ReportPostRequest.fromRawJson(String str) =>
      ReportPostRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  ReportPostRequest.fromJson(Map<String, dynamic> json) {
    postId = json["postId"];
    userId = json["userId"];
    reportId = json["reportId"];
    description = json["description"];
    reportDate = DateTime.parse(json["reportDate"]);
    checked = json["checked"];
  }

  Map<String, dynamic> toJson() => {
        "postId": postId,
        "userId": userId,
        "reportId": reportId,
        "description": description,
        "reportDate": reportDate!.toIso8601String(),
        "checked": checked,
      };
}
