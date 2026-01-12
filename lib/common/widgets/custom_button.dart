import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? buttonColor;
  final VoidCallback onTap;
  final String buttonText;
  final Color? borderColor;
  const CustomButton({super.key, this.width, this.buttonColor, required this.onTap, required this.buttonText, this.borderColor, this.height});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Ink(
          height: height ?? 45,
          width: width ?? Get.width,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: borderColor ?? Colors.transparent),
          ),
          child: Center(
            child: Text(buttonText, style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
