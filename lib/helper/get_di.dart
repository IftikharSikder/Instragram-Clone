import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/features/home/controllers/home_controllers.dart';
import 'package:untitled/features/home/domain/repository/home_repository.dart';
import 'package:untitled/features/home/domain/repository/home_repository_interface.dart';
import 'package:untitled/features/home/domain/services/home_service.dart';
import 'package:untitled/features/home/domain/services/home_service_interface.dart';
import 'package:untitled/features/language/controllers/language_controller.dart';
import 'package:untitled/features/posts/controllers/post_controller.dart';
import 'package:untitled/features/posts/domain/repository/post_repository.dart';
import 'package:untitled/features/posts/domain/repository/post_repository_interface.dart';
import 'package:untitled/features/posts/domain/services/post_service.dart';
import 'package:untitled/features/posts/domain/services/post_service_interface.dart';
import 'package:untitled/util/app_constants.dart';

import '../features/language/domain/models/language_models.dart';

Future<Map<String, Map<String, String>>> init() async {
  final sharedPreference = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreference);
  Get.lazyPut(() => LocalizationController(sharedPreferences: Get.find()));

  //RepositoryInterface
  Get.lazyPut<HomeRepositoryInterface>(() => HomeRepository());
  Get.lazyPut<PostRepositoryInterface>(() => PostRepository());

  //servicesInterface
  Get.lazyPut<HomeServiceInterface>(() => HomeService(homeRepositoryInterface: Get.find()));
  Get.lazyPut<PostServiceInterface>(() => PostService(postRepositoryInterface: Get.find()));

  //controller
  Get.lazyPut(() => HomeControllers(homeServiceInterface: Get.find()));
  Get.lazyPut(() => PostController(postServiceInterface: Get.find()));

  Map<String, Map<String, String>> _languages = Map();
  for (LanguageModel languageModel in AppConstants.languages) {
    String jsonStringValues = await rootBundle.loadString('assets/languages/${languageModel.languageCode}.json');
    Map<String, dynamic> _mappedJson = json.decode(jsonStringValues);

    Map<String, String> _json = Map();
    _mappedJson.forEach((key, value) {
      _json[key] = value.toString();
    });

    _languages['${languageModel.languageCode}_${languageModel.countryCode}'] = _json;
  }
  return _languages;
}
