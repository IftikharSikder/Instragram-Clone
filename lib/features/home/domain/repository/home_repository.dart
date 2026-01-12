import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:untitled/features/home/domain/models/story_model.dart';
import 'package:untitled/features/home/domain/repository/home_repository_interface.dart';

class HomeRepository implements HomeRepositoryInterface {
  @override
  Future<List<StoryModel>> getStories() async {
    final response = await rootBundle.loadString('lib/features/home/domain/repository/stories.json');
    final data = jsonDecode(response);
    List<StoryModel> stories = [];
    for (var i in data) {
      stories.add(StoryModel.fromJson(i));
    }
    return stories;
  }
}
