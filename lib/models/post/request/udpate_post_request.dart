import 'dart:convert';

class UpdatePostRequest {
  String? id;
  String? title;
  String? content;
  String? image;
  String? topicName;
  String? tags;

  UpdatePostRequest({
    this.id,
    this.title,
    this.content,
    this.image,
    this.topicName,
    this.tags,
  });

  UpdatePostRequest copyWith({
    String? id,
    String? title,
    String? content,
    String? image,
    String? topicName,
    String? tags,
  }) =>
      UpdatePostRequest(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        image: image ?? this.image,
        topicName: topicName ?? this.topicName,
        tags: tags ?? this.tags,
      );

  factory UpdatePostRequest.fromRawJson(String str) =>
      UpdatePostRequest.fromJson(json.decode(str));
  UpdatePostRequest.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    title = json['title'];
    content = json['content'];
    image = json['image'];
    topicName = json['topicName'];
    tags = json['tags'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['title'] = title;
    data['content'] = content;
    data['image'] = image;
    data['topicName'] = topicName;
    data['tags'] = tags;
    return data;
  }
}
