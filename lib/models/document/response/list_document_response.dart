class ListDocumentResponse {
  bool? isSuccessed;
  String? message;
  List<ResultObj>? resultObj;

  ListDocumentResponse({
    this.isSuccessed,
    this.message,
    this.resultObj,
  });

  ListDocumentResponse copyWith({
    bool? isSuccessed,
    String? message,
    List<ResultObj>? resultObj,
  }) =>
      ListDocumentResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory ListDocumentResponse.fromJson(Map<String, dynamic> json) =>
      ListDocumentResponse(
        isSuccessed: json["isSuccessed"],
        message: json["message"],
        resultObj: List<ResultObj>.from(
            json["resultObj"].map((x) => ResultObj.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "isSuccessed": isSuccessed,
        "message": message,
        "resultObj": List<dynamic>.from(resultObj!.map((x) => x.toJson())),
      };
}

class ResultObj {
  final String id;
  final String subId;
  final String title;
  final String description;
  final String fileName;
  final String filePath;
  final DateTime createdAt;
  final dynamic updatedAt;
  final UserShort userShort;
  final int viewNumber;
  final int saveNumber;
  final int downloadNumber;
  final int pageNumber;

  ResultObj({
    required this.id,
    required this.subId,
    required this.title,
    required this.description,
    required this.fileName,
    required this.filePath,
    required this.createdAt,
    required this.updatedAt,
    required this.userShort,
    required this.viewNumber,
    required this.saveNumber,
    required this.downloadNumber,
    required this.pageNumber,
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
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"],
        userShort: UserShort.fromJson(json["userShort"]),
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
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt,
        "userShort": userShort.toJson(),
        "viewNumber": viewNumber,
        "saveNumber": saveNumber,
        "downloadNumber": downloadNumber,
        "pageNumber": pageNumber,
      };
}

class UserShort {
  final String id;
  final String fullName;
  final String image;

  UserShort({
    required this.id,
    required this.fullName,
    required this.image,
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
