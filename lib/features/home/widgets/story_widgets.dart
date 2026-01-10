import 'package:flutter/material.dart';
import 'package:untitled/features/home/domain/models/store_model.dart';
import 'package:untitled/helper/validator.dart';
import 'package:untitled/util/dimensions.dart';
import 'package:untitled/util/images.dart';

class StoryItemWidget extends StatelessWidget {
  final StoryModel story;
  const StoryItemWidget({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: Dimensions.paddingSizeDefault),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  !story.isMystory
                      ? Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [Color(0xFFfeda75), Color(0xFFfa7e1e), Color(0xFFd62976), Color(0xFF962fbf), Color(0xFF4f5bd5)],
                            ),
                          ),
                        )
                      : SizedBox(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      height: !story.isMystory ? 74 : 80,
                      width: !story.isMystory ? 74 : 80,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                      child: Validator.imageValidator(imageUrl: story.imageUrl.toString())
                          ? Image.network(story.imageUrl!, fit: BoxFit.fill) // Network image
                          : Image.asset(Images.placeHolder, fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
              story.isMystory
                  ? Positioned(
                      bottom: -3,
                      right: -2,
                      child: Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 3),
                        ),
                        child: Center(child: Icon(Icons.add, size: 20)),
                      ),
                    )
                  : SizedBox(),
            ],
          ),
          Text(story.title ?? "", style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
