import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/features/posts/domain/models/post_model.dart';
import 'package:untitled/features/posts/widgets/post_header.dart';
import 'package:untitled/helper/validator.dart';
import 'package:untitled/util/images.dart';

import 'post_footer_widgets.dart';

class PostCardWidgets extends StatelessWidget {
  final PostModel post;
  const PostCardWidgets({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          PostHeader(post: post),
          SizedBox(
            width: double.infinity,
            height: Get.height * .6,
            child: Validator.imageValidator(imageUrl: post.postImage)
                ? Image.network(post.postImage, fit: BoxFit.fill)
                : Image.asset(Images.placeHolder, fit: BoxFit.fill),
          ),
          PostFooterWidgets(post: post),
        ],
      ),
    );
  }
}
