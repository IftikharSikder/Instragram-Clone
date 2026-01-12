import 'package:flutter/material.dart';
import 'package:untitled/helper/validator.dart';
import 'package:untitled/util/images.dart';

class PostProfileImageCard extends StatelessWidget {
  final bool isPostTypeNormal;
  final String postImageUrl;
  const PostProfileImageCard({super.key, required this.isPostTypeNormal, required this.postImageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        isPostTypeNormal
            ? Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [Color(0xFFfeda75), Color(0xFFfa7e1e), Color(0xFFd62976), Color(0xFF962fbf), Color(0xFF4f5bd5)]),
                ),
              )
            : SizedBox(),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            height: isPostTypeNormal ? 55 : 60,
            width: isPostTypeNormal ? 55 : 60,
            decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: Validator.imageValidator(imageUrl: postImageUrl.toString())
                ? Image.network(postImageUrl, fit: BoxFit.fill) // Network image
                : Image.asset(Images.placeHolder, fit: BoxFit.fill),
          ),
        ),
      ],
    );
  }
}
