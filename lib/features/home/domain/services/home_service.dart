import 'package:untitled/features/home/domain/models/story_model.dart';
import 'package:untitled/features/home/domain/repository/home_repository_interface.dart';
import 'package:untitled/features/home/domain/services/home_service_interface.dart';

class HomeService implements HomeServiceInterface {
  HomeRepositoryInterface homeRepositoryInterface;
  HomeService({required this.homeRepositoryInterface});

  @override
  Future<List<StoryModel>> getStories() async {
    return await homeRepositoryInterface.getStories();
  }
}
