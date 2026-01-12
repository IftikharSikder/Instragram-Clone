import 'package:flutter/material.dart';
import 'package:untitled/features/posts/domain/models/post_model.dart';
import 'package:untitled/util/dimensions.dart';
import 'package:untitled/util/images.dart';

class PostFooterWidgets extends StatelessWidget {
  final PostModel post;
  const PostFooterWidgets({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimensions.paddingSizeSmall),
      child: Row(
        children: [
          FooterItemWidget(icon: Icons.favorite_border, impressionCount: post.totalLikes),
          FooterItemWidget(icon: Icons.mode_comment_outlined, impressionCount: post.totalComments),
          FooterItemWidget(isComment: true, impressionCount: post.totalShares),
          Spacer(),
          Icon(Icons.bookmark_border, color: Colors.white),
        ],
      ),
    );
  }
}

class FooterItemWidget extends StatelessWidget {
  final IconData? icon;
  final int? impressionCount;
  final bool isComment;
  const FooterItemWidget({super.key, this.icon, this.impressionCount, this.isComment = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: Dimensions.paddingSizeDefault),
      child: Row(
        children: [
          !isComment
              ? Icon(icon, color: Colors.white, size: Dimensions.fontSizeOverLarge)
              : Image.asset(Images.send, color: Colors.white, width: Dimensions.fontSizeExtraLarge, height: Dimensions.fontSizeExtraLarge),
          SizedBox(width: Dimensions.paddingSizeSmall),
          Text(impressionCount.toString(), style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
