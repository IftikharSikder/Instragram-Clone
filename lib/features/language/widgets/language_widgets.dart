import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/features/language/controllers/language_controller.dart';
import 'package:untitled/features/language/domain/models/language_models.dart';
import 'package:untitled/util/app_constants.dart';
import 'package:untitled/util/dimensions.dart';

class LanguageWidget extends StatelessWidget {
  final LanguageModel languageModel;
  final LocalizationController localizationController;
  final int index;
  LanguageWidget({required this.languageModel, required this.localizationController, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        localizationController.setLanguage(Locale(AppConstants.languages[index].languageCode, AppConstants.languages[index].countryCode));
        localizationController.setSelectedIndex(index);
        Get.back();
      },
      child: Container(
        padding: EdgeInsets.all(7),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 1, child: Image.asset(languageModel.imageUrl)),
                  SizedBox(width: Dimensions.radiusExtraLarge),
                  Expanded(
                    flex: 7,
                    child: Text(
                      languageModel.languageName,
                      style: TextStyle(
                        fontSize: Dimensions.radiusExtraLarge,
                        color: localizationController.selectedIndex == index ? Colors.blue : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
