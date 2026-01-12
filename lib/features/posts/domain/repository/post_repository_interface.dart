import 'package:untitled/features/posts/domain/models/post_model.dart';

abstract class PostRepositoryInterface {
  Future<List<PostModel>> getPosts();
}
