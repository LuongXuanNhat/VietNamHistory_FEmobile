class NewsResponse {
  final bool isSuccessed;
  final String message;
  final List<Item> resultObj;

  NewsResponse({
    required this.isSuccessed,
    required this.message,
    required this.resultObj,
  });

  NewsResponse copyWith({
    bool? isSuccessed,
    String? message,
    List<Item>? resultObj,
  }) =>
      NewsResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  factory NewsResponse.fromJson(Map<String, dynamic> json) => NewsResponse(
        isSuccessed: json["isSuccessed"],
        message: json["message"],
        resultObj:
            List<Item>.from(json["resultObj"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "isSuccessed": isSuccessed,
        "message": message,
        "resultObj": List<dynamic>.from(resultObj.map((x) => x.toJson())),
      };
}

class Item {
  final String id;
  final String title;
  final String description;
  final DateTime createdAt;
  final String image;
  final String url;

  Item({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.image,
    required this.url,
  });

  Item copyWith({
    String? id,
    String? title,
    String? description,
    DateTime? createdAt,
    String? image,
    String? url,
  }) =>
      Item(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        image: image ?? this.image,
        url: url ?? this.url,
      );

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        createdAt: DateTime.parse(json["createdAt"]),
        image: json["image"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "createdAt": createdAt.toIso8601String(),
        "image": image,
        "url": url,
      };
}
