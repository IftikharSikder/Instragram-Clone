import 'package:untitled/features/home/domain/models/story_model.dart';

abstract class HomeRepositoryInterface {
  Future<List<StoryModel>> getStories();
}
