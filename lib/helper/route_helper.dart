import 'package:get/get.dart';
import 'package:untitled/features/home/screens/home_screen.dart';

class RouteHelper {
  static const String initial = '/';
  static const String splash = '/splash';

  static List<GetPage> routes = [GetPage(name: initial, page: () => const HomeScreen())];
}
