class DetailDocumentResponse {
  final bool? isSuccessed;
  final String? message;
  final ResultObj? resultObj;

  DetailDocumentResponse({
    this.isSuccessed,
    this.message,
    this.resultObj,
  });

  DetailDocumentResponse copyWith({
    bool? isSuccessed,
    String? message,
    ResultObj? resultObj,
  }) =>
      DetailDocumentResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory DetailDocumentResponse.fromJson(Map<String, dynamic> json) =>
      DetailDocumentResponse(
        isSuccessed: json["isSuccessed"],
        message: json["message"],
        resultObj: json["resultObj"] == null
            ? null
            : ResultObj.fromJson(json["resultObj"]),
      );

  Map<String, dynamic> toJson() => {
        "isSuccessed": isSuccessed,
        "message": message,
        "resultObj": resultObj == null ? null : resultObj!.toJson(),
      };
}

class ResultObj {
  final String? id;
  final String? subId;
  final String? title;
  final String? description;
  final String? fileName;
  final String? filePath;
  final DateTime? createdAt;
  final dynamic updatedAt;
  final UserShort? userShort;
  final int? viewNumber;
  final int? saveNumber;
  final int? downloadNumber;
  final int? pageNumber;

  ResultObj({
    this.id,
    this.subId,
    this.title,
    this.description,
    this.fileName,
    this.filePath,
    this.createdAt,
    this.updatedAt,
    this.userShort,
    this.viewNumber,
    this.saveNumber,
    this.downloadNumber,
    this.pageNumber,
  });

  ResultObj copyWith({
    String? id,
    String? subId,
    String? title,
    String? description,
    String? fileName,
    String? filePath,
    DateTime? createdAt,
    dynamic updatedAt,
    UserShort? userShort,
    int? viewNumber,
    int? saveNumber,
    int? downloadNumber,
    int? pageNumber,
  }) =>
      ResultObj(
        id: id ?? this.id,
        subId: subId ?? this.subId,
        title: title ?? this.title,
        description: description ?? this.description,
        fileName: fileName ?? this.fileName,
        filePath: filePath ?? this.filePath,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        userShort: userShort ?? this.userShort,
        viewNumber: viewNumber ?? this.viewNumber,
        saveNumber: saveNumber ?? this.saveNumber,
        downloadNumber: downloadNumber ?? this.downloadNumber,
        pageNumber: pageNumber ?? this.pageNumber,
      );

  factory ResultObj.fromJson(Map<String, dynamic> json) => ResultObj(
        id: json["id"],
        subId: json["subId"],
        title: json["title"],
        description: json["description"],
        fileName: json["fileName"],
        filePath: json["filePath"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"],
        userShort: json["userShort"] == null
            ? null
            : UserShort.fromJson(json["userShort"]),
        viewNumber: json["viewNumber"],
        saveNumber: json["saveNumber"],
        downloadNumber: json["downloadNumber"],
        pageNumber: json["pageNumber"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "subId": subId,
        "title": title,
        "description": description,
        "fileName": fileName,
        "filePath": filePath,
        "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
        "updatedAt": updatedAt,
        "userShort": userShort == null ? null : userShort!.toJson(),
        "viewNumber": viewNumber,
        "saveNumber": saveNumber,
        "downloadNumber": downloadNumber,
        "pageNumber": pageNumber,
      };
}

class UserShort {
  final String? id;
  final String? fullName;
  final String? image;

  UserShort({
    this.id,
    this.fullName,
    this.image,
  });

  UserShort copyWith({
    String? id,
    String? fullName,
    String? image,
  }) =>
      UserShort(
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
        image: image ?? this.image,
      );

  factory UserShort.fromJson(Map<String, dynamic> json) => UserShort(
        id: json["id"],
        fullName: json["fullName"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullName": fullName,
        "image": image,
      };
}
