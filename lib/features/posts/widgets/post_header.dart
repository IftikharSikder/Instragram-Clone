import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/common/widgets/custom_button.dart';
import 'package:untitled/features/posts/domain/models/post_model.dart';
import 'package:untitled/util/dimensions.dart';

import 'post_profile_image_card.dart';

class PostHeader extends StatelessWidget {
  final PostModel post;
  const PostHeader({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    bool postTypeIsNormal = post.postType == "normal";
    return Padding(
      padding: const EdgeInsets.only(
        left: Dimensions.paddingSizeSmall,
        right: Dimensions.paddingSizeExtraSmall,
        bottom: Dimensions.paddingSizeSmall,
        top: Dimensions.paddingSizeSmall,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              PostProfileImageCard(
                isPostTypeNormal: postTypeIsNormal,
                postImageUrl: post.profileImage,
              ),
              SizedBox(width: Dimensions.paddingSizeDefault),
              SizedBox(
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: Dimensions.paddingSizeExtraSmall),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      post.isVerified
                          ? Row(
                              children: [
                                Text(post.name, style: TextStyle(color: Colors.white)),
                                SizedBox(width: Dimensions.paddingSizeExtraSmall),
                                Icon(
                                  Icons.verified,
                                  color: Colors.blue,
                                  size: Dimensions.fontSizeLarge,
                                ),
                              ],
                            )
                          : Text(post.name, style: TextStyle(color: Colors.white)),
                      postTypeIsNormal
                          ? Padding(
                              padding: EdgeInsets.only(top: Dimensions.paddingSizeExtraSmall),
                              child: Row(
                                children: [
                                  Text("🎵", style: TextStyle(color: Colors.white)),
                                  Text(post.captionValue, style: TextStyle(color: Colors.white)),
                                ],
                              ),
                            )
                          : Text(post.captionValue, style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          post.isFollowable
              ? Row(
                  children: [
                    post.isFollowable
                        ? Padding(
                            padding: EdgeInsets.only(right: Dimensions.paddingSizeSmall),
                            child: CustomButton(
                              onTap: () {},
                              buttonText: "follow".tr,
                              width: Get.width * .2,
                              borderColor: Colors.white,
                              height: 40,
                            ),
                          )
                        : SizedBox(),
                    Icon(Icons.more_vert, color: Colors.white),
                  ],
                )
              : Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
    );
  }
}
