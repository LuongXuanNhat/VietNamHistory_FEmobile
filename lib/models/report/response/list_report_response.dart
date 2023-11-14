class ListReport {
  bool? isSuccessed;
  String? message;
  List<ResultObj>? resultObj;

  ListReport({
    this.isSuccessed,
    this.message,
    this.resultObj,
  });

  ListReport copyWith({
    bool? isSuccessed,
    String? message,
    List<ResultObj>? resultObj,
  }) =>
      ListReport(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  ListReport.fromJson(Map<String, dynamic> json) {
    isSuccessed = json["isSuccessed"];
    message = json["message"];
    if (json['resultObj'] != null) {
      resultObj = <ResultObj>[];
      json['resultObj'].forEach((v) {
        resultObj!.add(ResultObj.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() => {
        "isSuccessed": isSuccessed,
        "message": message,
        if (resultObj != null)
          "resultObj": resultObj!.map((v) => v.toJson()).toList(),
      };
}

class ResultObj {
  String? id;
  String? title;
  String? description;

  ResultObj({
    this.id,
    this.title,
    this.description,
  });

  ResultObj copyWith({
    String? id,
    String? title,
    String? description,
  }) =>
      ResultObj(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
      );

  ResultObj.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    description = json["description"];
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
      };
}
