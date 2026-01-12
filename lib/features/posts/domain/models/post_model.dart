class PostsResponse {
  final List<PostModel> posts;

  PostsResponse({required this.posts});

  factory PostsResponse.fromJson(Map<String, dynamic> json) {
    return PostsResponse(posts: (json['posts'] as List).map((e) => PostModel.fromJson(e)).toList());
  }
}

class PostModel {
  final String profileImage;
  final String name;
  final String postType;
  final String captionValue;
  final String postCaption;
  final int totalLikes;
  final int totalComments;
  final int totalShares;
  final List<CommentModel> comments;
  final bool isVerified;
  final bool isFollowable;
  final String postImage; // New field added

  PostModel({
    required this.profileImage,
    required this.name,
    required this.postType,
    required this.captionValue,
    required this.postCaption,
    required this.totalLikes,
    required this.totalComments,
    required this.totalShares,
    required this.comments,
    required this.isVerified,
    required this.isFollowable,
    required this.postImage, // New field in constructor
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      profileImage: json['profile_image'],
      name: json['name'],
      postType: json['post_type'],
      captionValue: json['caption_value'],
      postCaption: json['post_caption'],
      totalLikes: json['total_likes'],
      totalComments: json['total_comments'],
      totalShares: json['total_shares'],
      comments: (json['comments'] as List).map((e) => CommentModel.fromJson(e)).toList(),
      isVerified: json['is_verified'],
      isFollowable: json['is_followable'],
      postImage: json['post_image'], // Handle new field
    );
  }
}

class CommentModel {
  final String username;
  final String comment;

  CommentModel({required this.username, required this.comment});

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(username: json['username'], comment: json['comment']);
  }
}
