import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:untitled/features/posts/domain/models/post_model.dart';
import 'package:untitled/features/posts/domain/repository/post_repository_interface.dart';

class PostRepository implements PostRepositoryInterface {
  @override
  Future<List<PostModel>> getPosts() async {
    final response = await rootBundle.loadString('lib/features/posts/domain/repository/posts.json');
    final decoded = jsonDecode(response);
    final data = decoded['posts'];
    List<PostModel> posts = [];
    for (var i in data) {
      posts.add(PostModel.fromJson(i));
    }
    return posts;
  }
}
