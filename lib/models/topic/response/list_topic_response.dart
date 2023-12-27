class ListTopicResponse {
  bool? isSuccessed;
  String? message;
  List<TopicItem>? resultObj;

  ListTopicResponse({
    this.isSuccessed,
    this.message,
    this.resultObj,
  });

  ListTopicResponse copyWith({
    bool? isSuccessed,
    String? message,
    List<TopicItem>? resultObj,
  }) =>
      ListTopicResponse(
        isSuccessed: isSuccessed ?? this.isSuccessed,
        message: message ?? this.message,
        resultObj: resultObj ?? this.resultObj,
      );

  ListTopicResponse.fromJson(Map<String, dynamic> json) {
    isSuccessed = json['isSuccessed'];
    message = json['message'];
    if (json['resultObj'] != null) {
      resultObj = <TopicItem>[];
      json['resultObj'].forEach((v) {
        resultObj!.add(TopicItem.fromJson(v));
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

class TopicItem {
  String? id;
  String? title;

  TopicItem({
    this.id,
    this.title,
  });

  TopicItem copyWith({
    String? id,
    String? title,
  }) =>
      TopicItem(
        id: id ?? this.id,
        title: title ?? this.title,
      );

  TopicItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    return data;
  }
}
