import 'package:untitled/features/posts/domain/models/post_model.dart';
import 'package:untitled/features/posts/domain/repository/post_repository_interface.dart';
import 'package:untitled/features/posts/domain/services/post_service_interface.dart';

class PostService implements PostServiceInterface {
  PostRepositoryInterface postRepositoryInterface;
  PostService({required this.postRepositoryInterface});

  @override
  Future<List<PostModel>> getPosts() async {
    return await postRepositoryInterface.getPosts();
  }
}
