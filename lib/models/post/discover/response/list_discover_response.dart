class ListDiscoverResponse {
  bool? isSuccessed;
  String? message;
  List<ResultObj>? resultObj;

  ListDiscoverResponse({
    this.isSuccessed,
    this.message,
    this.resultObj,
  });

  ListDiscoverResponse copyWith({
    bool? isSuccessed,
    String? message,
    List<ResultObj>? resultObj,
  }) =>
      ListDiscoverResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  ListDiscoverResponse.fromJson(Map<String, dynamic> json) {
    isSuccessed = json['isSuccessed'];
    message = json['message'];
    if (json['resultObj'] != null) {
      resultObj = <ResultObj>[];
      json['resultObj'].forEach((v) {
        resultObj!.add(ResultObj.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isSuccessed'] = true;
    if (resultObj != null) {
      data['resultObj'] = resultObj!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    return data;
  }
}

class ResultObj {
  String? id;
  String? subId;
  String? title;
  String? content;
  String? image;
  dynamic topicName;
  DateTime? createdAt;
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
    this.createdAt,
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
    dynamic topicName,
    DateTime? createdAt,
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
        createdAt: createdAt ?? this.createdAt,
        topicName: topicName ?? this.topicName,
        tags: tags ?? this.tags,
        userShort: userShort ?? this.userShort,
        viewNumber: viewNumber ?? this.viewNumber,
        commentNumber: commentNumber ?? this.commentNumber,
        likeNumber: likeNumber ?? this.likeNumber,
        saveNumber: saveNumber ?? this.saveNumber,
      );

  ResultObj.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subId = json['subId'];
    title = json['title'];
    content = json['content'];
    image = json['image'];
    createdAt = DateTime.parse(json['createdAt']);
    topicName = json['topicName'];
    if (json['tags'] != null) {
      tags = <Tag>[];
      json['tags'].forEach((v) {
        tags!.add(Tag.fromJson(v));
      });
    }
    userShort = json['userShort'] != null
        ? UserShort.fromJson(json['userShort'])
        : null;
    viewNumber = json['viewNumber'];
    commentNumber = json['commentNumber'];
    likeNumber = json['likeNumber'];
    saveNumber = json['saveNumber'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['subId'] = subId;
    data['title'] = title;
    data['content'] = content;
    data['image'] = image;
    data['createdAt'] = createdAt!.toIso8601String();
    data['topicName'] = topicName;
    data['tags'] = tags!.map((v) => v.toJson()).toList();
    data['userShort'] = userShort!.toJson();
    data['viewNumber'] = viewNumber;
    data['commentNumber'] = commentNumber;
    data['likeNumber'] = likeNumber;
    data['saveNumber'] = saveNumber;
    return data;
  }
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

  Tag.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
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

  factory UserShort.fromJson(Map<String, dynamic> json) {
    return UserShort(
      id: json['id'],
      fullName: json['fullName'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'fullName': fullName,
        'image': image,
      };
}
