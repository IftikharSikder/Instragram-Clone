import 'package:untitled/features/posts/domain/models/post_model.dart';

abstract class PostServiceInterface {
  Future<List<PostModel>> getPosts();
}
