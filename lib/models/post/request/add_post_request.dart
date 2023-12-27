import 'dart:convert';

class AddPostRequest {
  String? title;
  String? content;
  String? image;
  String? topicName;
  String? tags;

  AddPostRequest({
    this.title,
    this.content,
    this.image,
    this.topicName,
    this.tags,
  });

  AddPostRequest copyWith({
    String? title,
    String? content,
    String? image,
    String? topicName,
    String? tags,
  }) =>
      AddPostRequest(
        title: title ?? this.title,
        content: content ?? this.content,
        image: image ?? this.image,
        topicName: topicName ?? this.topicName,
        tags: tags ?? this.tags,
      );

  factory AddPostRequest.fromRawJson(String str) =>
      AddPostRequest.fromJson(json.decode(str));
  AddPostRequest.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    content = json['content'];
    image = json['image'];
    topicName = json['topicName'];
    tags = json['tags'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['content'] = content;
    data['image'] = image;
    data['topicName'] = topicName;
    data['tags'] = tags;
    return data;
  }
}
