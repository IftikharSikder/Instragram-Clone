import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/features/home/domain/models/store_model.dart';
import 'package:untitled/features/home/widgets/story_widgets.dart';

class StoryViewWidgets extends StatelessWidget {
  final List<StoryModel> stories;
  const StoryViewWidgets({super.key, required this.stories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 8,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        itemBuilder: (context, index) {
          return StoryItemWidget(story: stories[index]);
        },
      ),
    );
  }
}
