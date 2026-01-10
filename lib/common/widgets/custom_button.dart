import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final Color? buttonColor;
  final VoidCallback onTap;
  final String buttonText;
  const CustomButton({super.key, this.width, this.buttonColor, required this.onTap, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 45,
        width: width ?? Get.width,
        decoration: BoxDecoration(color: buttonColor, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(buttonText, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
