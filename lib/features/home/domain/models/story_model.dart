class StoryModel {
  final String? imageUrl;
  final String? title;
  final bool isMystory;

  StoryModel({this.imageUrl, this.title, this.isMystory = false});

  factory StoryModel.fromJson(Map<String, dynamic> json) {
    return StoryModel(imageUrl: json['imageUrl'] as String?, title: json['title'] as String?, isMystory: json['isMystory'] as bool? ?? false);
  }

  Map<String, dynamic> toJson() {
    return {'imageUrl': imageUrl, 'title': title, 'isMystory': isMystory};
  }

  StoryModel copyWith({String? imageUrl, String? title, bool? isMystory}) {
    return StoryModel(imageUrl: imageUrl ?? this.imageUrl, title: title ?? this.title, isMystory: isMystory ?? this.isMystory);
  }
}
