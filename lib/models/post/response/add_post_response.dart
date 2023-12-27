import 'dart:convert';

class AddPostResponse {
  bool? isSuccessed;
  String? message;
  ResultObj? resultObj;

  AddPostResponse({
    this.isSuccessed,
    this.message,
    this.resultObj,
  });

  AddPostResponse copyWith({
    bool? isSuccessed,
    String? message,
    ResultObj? resultObj,
  }) =>
      AddPostResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory AddPostResponse.fromRawJson(String str) =>
      AddPostResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddPostResponse.fromJson(Map<String, dynamic> json) =>
      AddPostResponse(
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
  String? id;
  String? subId;
  String? title;
  String? content;
  String? image;
  String? topicName;
  List<Tag>? tags;
  UserShort? userShort;
  int? viewNumber;
  int? commentNumber;
  int? likeNumber;
  int? saveNumber;

  ResultObj({
    this.id,
    this.subId,
    this.title,
    this.content,
    this.image,
    this.topicName,
    this.tags,
    this.userShort,
    this.viewNumber,
    this.commentNumber,
    this.likeNumber,
    this.saveNumber,
  });

  ResultObj copyWith({
    String? id,
    String? subId,
    String? title,
    String? content,
    String? image,
    String? topicName,
    List<Tag>? tags,
    UserShort? userShort,
    int? viewNumber,
    int? commentNumber,
    int? likeNumber,
    int? saveNumber,
  }) =>
      ResultObj(
        id: id ?? this.id,
        subId: subId ?? this.subId,
        title: title ?? this.title,
        content: content ?? this.content,
        image: image ?? this.image,
        topicName: topicName ?? this.topicName,
        tags: tags ?? this.tags,
        userShort: userShort ?? this.userShort,
        viewNumber: viewNumber ?? this.viewNumber,
        commentNumber: commentNumber ?? this.commentNumber,
        likeNumber: likeNumber ?? this.likeNumber,
        saveNumber: saveNumber ?? this.saveNumber,
      );

  factory ResultObj.fromRawJson(String str) =>
      ResultObj.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResultObj.fromJson(Map<String, dynamic> json) => ResultObj(
        id: json["id"],
        subId: json["subId"],
        title: json["title"],
        content: json["content"],
        image: json["image"],
        topicName: json["topicName"],
        tags: json["tags"] == null
            ? null
            : List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        userShort: json["userShort"] == null
            ? null
            : UserShort.fromJson(json["userShort"]),
        viewNumber: json["viewNumber"],
        commentNumber: json["commentNumber"],
        likeNumber: json["likeNumber"],
        saveNumber: json["saveNumber"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "subId": subId,
        "title": title,
        "content": content,
        "image": image,
        "topicName": topicName,
        "tags": tags == null
            ? null
            : List<dynamic>.from(tags!.map((x) => x.toJson())),
        "userShort": userShort == null ? null : userShort!.toJson(),
        "viewNumber": viewNumber,
        "commentNumber": commentNumber,
        "likeNumber": likeNumber,
        "saveNumber": saveNumber,
      };
}

class Tag {
  String? id;
  String? name;

  Tag({
    this.id,
    this.name,
  });

  Tag copyWith({
    String? id,
    String? name,
  }) =>
      Tag(
        id: id ?? this.id,
        name: name ?? this.name,
      );

  factory Tag.fromRawJson(String str) => Tag.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class UserShort {
  String? id;
  String? fullName;
  String? image;

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

  factory UserShort.fromRawJson(String str) =>
      UserShort.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

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
