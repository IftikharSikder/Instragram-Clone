import 'package:untitled/features/home/domain/models/store_model.dart';

abstract class HomeServiceInterface {
  Future<List<StoryModel>> getStories();
}
