import 'package:get/get.dart';

class HomeControllers extends GetxController implements GetxService {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void setNewIndex({required int index}) {
    _currentIndex = index;
    update();
  }
}
