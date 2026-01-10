import 'package:untitled/features/home/domain/models/store_model.dart';

abstract class HomeRepositoryInterface {
  Future<List<StoryModel>> getStories();
}
