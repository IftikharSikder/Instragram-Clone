import 'package:get/get.dart';
import 'package:untitled/features/home/domain/models/story_model.dart';
import 'package:untitled/features/home/domain/services/home_service_interface.dart';

class HomeControllers extends GetxController implements GetxService {
  HomeServiceInterface homeServiceInterface;
  HomeControllers({required this.homeServiceInterface});

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  List<StoryModel> _stories = [];
  List<StoryModel> get stories => _stories;

  void setNewIndex({required int index}) {
    _currentIndex = index;
    update();
  }

  void getStories() async {
    _stories = await homeServiceInterface.getStories();
    update();
    print("-------------------");
    print(_stories);
  }
}
