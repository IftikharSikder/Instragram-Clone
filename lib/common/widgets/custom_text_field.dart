import 'package:flutter/material.dart';
import 'package:untitled/util/dimensions.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Color? hintColor;
  final bool? isObscureText;
  final TextEditingController? controller;
  final Icon? suffixIcon;
  final bool isDefaultPadding;
  const CustomTextField({
    super.key,
    this.hintText,
    this.hintColor,
    this.isObscureText,
    this.controller,
    this.suffixIcon,
    this.isDefaultPadding = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Dimensions.paddingSizeDefault),
      child: TextFormField(
        obscureText: isObscureText ?? false,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeSmall, vertical: isDefaultPadding ? Dimensions.paddingSizeSmall : 0),
          filled: true,
          fillColor: Colors.white,
          border: InputBorder.none,
          hintText: hintText,
          suffixIcon: suffixIcon,
          hintStyle: TextStyle(color: hintColor, fontSize: Dimensions.fontSizeDefault),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(Dimensions.radiusLarge), borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
