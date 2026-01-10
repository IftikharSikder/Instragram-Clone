import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/common/widgets/custom_app_bar.dart';
import 'package:untitled/util/dimensions.dart';
import 'package:untitled/util/images.dart';

class HomeViewWidget extends StatelessWidget {
  const HomeViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(children: [HomeAppbar()]));
  }
}

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leadingIcon: Icon(Icons.add, color: Colors.white, size: 30),
      centerWidget: Text("app_name".tr, style: TextStyle(color: Colors.white)),
      actionWidget: [
        Stack(
          children: [
            Image.asset(Images.heart, height: 20, width: 20, color: Colors.white),
            Positioned(
              top: -2,
              right: -2,
              child: Container(
                height: Dimensions.fontSizeOverSmall,
                width: Dimensions.fontSizeOverSmall,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  border: Border.all(color: Colors.red, width: 1),
                ),
              ),
            ),
          ],
        ),
        //CircleAvatar(radius: 10, foregroundColor: Colors.red),
      ],
    );
  }
}
