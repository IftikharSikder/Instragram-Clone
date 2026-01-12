import 'package:untitled/features/home/domain/models/story_model.dart';

abstract class HomeServiceInterface {
  Future<List<StoryModel>> getStories();
}
