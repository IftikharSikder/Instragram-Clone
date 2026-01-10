import 'package:untitled/features/language/domain/models/language_models.dart';

import 'images.dart';

class AppConstants {
  static const String COUNTRY_CODE = 'country_code';
  static const String LANGUAGE_CODE = 'language_code';

  /// Shared Key
  static const String theme = 'Instagram Theme';

  static List<LanguageModel> languages = [
    LanguageModel(imageUrl: Images.english, languageName: 'English', countryCode: 'US', languageCode: 'en'),
    LanguageModel(imageUrl: Images.bangla, languageName: 'বাংলা', countryCode: 'BD', languageCode: 'bn'),
  ];
}
