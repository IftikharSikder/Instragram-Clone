import 'package:flutter/material.dart';
import 'package:untitled/features/posts/domain/models/post_model.dart';
import 'package:untitled/features/posts/widgets/post_card_widgets.dart';

class PostListWidget extends StatelessWidget {
  final List<PostModel> posts;
  const PostListWidget({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        PostModel post = posts[index];
        return PostCardWidgets(post: post);
      }, childCount: posts.length),
    );
  }
}
