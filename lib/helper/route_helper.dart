import 'package:get/get.dart';
import 'package:untitled/features/auth/screens/sign_in_screen.dart';

class RouteHelper {
  static const String initial = '/';
  static const String splash = '/splash';
  static const String signIn = '/sign-in';

  static List<GetPage> routes = [GetPage(name: initial, page: () => const SignInScreen())];
}
