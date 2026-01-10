import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/common/widgets/custom_button.dart';
import 'package:untitled/common/widgets/custom_text_field.dart';
import 'package:untitled/helper/route_helper.dart';
import 'package:untitled/util/dimensions.dart';
import 'package:untitled/util/images.dart';
import 'package:untitled/util/styles.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = Get.height;
    double screenWidth = Get.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: screenHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF833AB4), Color(0xFFF77737), Color(0xFFFCAF45)],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeExtremeLarge),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: Dimensions.paddingSizeDefault),
                      Image.asset(Images.logo_with_name, width: screenWidth * .4, height: screenWidth * .4),
                      SizedBox(height: Dimensions.paddingSizeLarge),

                      CustomTextField(hintText: 'phone_username_or_email'.tr, hintColor: Theme.of(context).hintColor),
                      CustomTextField(
                        hintText: 'password'.tr,
                        hintColor: Theme.of(context).hintColor,
                        isObscureText: true,
                        suffixIcon: Icon(Icons.visibility_off),
                        isDefaultPadding: false,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text("forgotten_password".tr, style: robotoRegular),
                      ),
                      SizedBox(height: Dimensions.paddingSizeDefault),

                      CustomButton(
                        buttonText: "log_in".tr,
                        buttonColor: Colors.blue,
                        onTap: () {
                          Get.offAllNamed(RouteHelper.home);
                        },
                      ),
                      SizedBox(height: Dimensions.paddingSizeExtremeLarge),

                      Row(
                        children: [
                          Expanded(child: DividerWidget()),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text("or".tr, style: robotoRegular),
                          ),
                          Expanded(child: DividerWidget()),
                        ],
                      ),
                      SizedBox(height: Dimensions.paddingSizeDefault),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("log_in_with_facebook".tr, style: robotoMedium),
                          SizedBox(width: Dimensions.paddingSizeSmall),
                          Image.asset(Images.facebook, width: screenWidth * .045, height: screenWidth * .045),
                        ],
                      ),
                      SizedBox(height: Dimensions.paddingSizeDefault),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeExtremeLarge, vertical: Dimensions.paddingSizeDefault),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DividerWidget(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("dont_have_an_acount?".tr, style: robotoMedium),
                      TextButton(
                        onPressed: () {},
                        child: Text("sign_up".tr, style: robotoMedium),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(color: Colors.white, thickness: 1);
  }
}
