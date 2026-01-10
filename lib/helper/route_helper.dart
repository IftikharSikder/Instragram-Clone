import 'package:get/get.dart';
import 'package:untitled/features/auth/screens/sign_in_screen.dart';
import 'package:untitled/features/home/screens/home_screen.dart';

class RouteHelper {
  static const String initial = '/';
  static const String splash = '/splash';
  static const String home = '/home';
  static const String signIn = '/sign-in';

  static List<GetPage> routes = [GetPage(name: initial, page: () => const SignInScreen()), GetPage(name: home, page: () => const HomeScreen())];
}
