import 'package:flutter/material.dart';
import 'package:untitled/util/dimensions.dart';

class CustomAppBar extends StatelessWidget {
  final Icon? leadingIcon;
  final Widget? centerWidget;
  final List<Widget> actionWidget;
  final bool isCenterImage;

  const CustomAppBar({super.key, this.leadingIcon, this.centerWidget, required this.actionWidget, this.isCenterImage = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: leadingIcon,
      title: Center(child: centerWidget),
      actions: actionWidget,
      backgroundColor: Colors.black,
      actionsPadding: EdgeInsets.only(right: Dimensions.paddingSizeDefault),
    );
  }
}
