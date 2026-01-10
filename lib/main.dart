import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/features/language/controllers/language_controller.dart';
import 'package:untitled/util/app_constants.dart';
import 'package:untitled/util/messages.dart';

import 'helper/get_di.dart' as dep;
import 'helper/route_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Map<String, Map<String, String>> _languages = await dep.init();
  runApp(MyApp(languages: _languages));
}

class MyApp extends StatelessWidget {
  final Map<String, Map<String, String>> languages;
  const MyApp({super.key, required this.languages});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizationController>(
      builder: (localizationController) {
        return GetMaterialApp(
          title: 'Instagram',
          debugShowCheckedModeBanner: false,
          locale: localizationController.locale,
          translations: Messages(languages: languages),
          fallbackLocale: Locale(AppConstants.languages[0].languageCode, AppConstants.languages[0].countryCode),
          getPages: RouteHelper.routes,
        );
      },
    );
  }
}
