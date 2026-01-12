import 'package:get/get.dart';
import 'package:untitled/features/posts/domain/models/post_model.dart';
import 'package:untitled/features/posts/domain/services/post_service_interface.dart';

class PostController extends GetxController implements GetxService {
  PostServiceInterface postServiceInterface;
  PostController({required this.postServiceInterface});

  List<PostModel> postList = [];

  void getPosts() async {
    postList = await postServiceInterface.getPosts();
    update();
    print("-------------------");
    print(postList);
  }
}
