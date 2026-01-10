import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/features/language/controllers/language_controller.dart';
import 'package:untitled/features/language/widgets/language_widgets.dart';
import 'package:untitled/util/dimensions.dart';

class LanguageBottomSheet {
  static Future<dynamic> buildBottomSheet(BuildContext context) {
    return Get.bottomSheet(
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      Container(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: GetBuilder<LocalizationController>(
            builder: (localizationController) {
              return Column(
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'select'.tr,
                    style: TextStyle(fontSize: Dimensions.radiusExtraLarge, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: Dimensions.radiusExtraLarge),
                  ListView.builder(
                    itemCount: 2,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => LanguageWidget(
                      languageModel: localizationController.languages[index],
                      localizationController: localizationController,
                      index: index,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
