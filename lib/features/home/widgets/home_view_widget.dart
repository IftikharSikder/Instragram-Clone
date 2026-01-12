import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/common/widgets/custom_app_bar.dart';
import 'package:untitled/features/home/controllers/home_controllers.dart';
import 'package:untitled/features/home/widgets/story_view_widgets.dart';
import 'package:untitled/features/posts/controllers/post_controller.dart';
import 'package:untitled/features/posts/widgets/post_list_widget.dart';
import 'package:untitled/util/dimensions.dart';
import 'package:untitled/util/images.dart';

class HomeViewWidget extends StatefulWidget {
  const HomeViewWidget({super.key});

  @override
  State<HomeViewWidget> createState() => _HomeViewWidgetState();
}

class _HomeViewWidgetState extends State<HomeViewWidget> {
  HomeControllers homeControllers = Get.find<HomeControllers>();
  PostController postControllers = Get.find<PostController>();

  @override
  void initState() {
    homeControllers.getStories();
    postControllers.getPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeControllers>(
      builder: (homeControllers) {
        return GetBuilder<PostController>(
          builder: (postControllers) {
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: HomeAppbar()),
                SliverToBoxAdapter(child: StoryViewWidgets(stories: homeControllers.stories)),
                PostListWidget(posts: postControllers.postList),
              ],
            );
          },
        );
      },
    );
  }
}

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leadingIcon: Icon(Icons.add, color: Colors.white, size: 30),
      //centerWidget: Text("app_name".tr, style: TextStyle(color: Colors.white)),
      centerWidget: Image.asset(Images.appName, width: Get.width / 3),
      actionWidget: [
        Stack(
          children: [
            Image.asset(Images.heart, height: 20, width: 20, color: Colors.white),
            Positioned(
              top: -2,
              right: -2,
              child: Container(
                height: Dimensions.fontSizeOverSmall,
                width: Dimensions.fontSizeOverSmall,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  border: Border.all(color: Colors.red, width: 1),
                ),
              ),
            ),
          ],
        ),
        //CircleAvatar(radius: 10, foregroundColor: Colors.red),
      ],
    );
  }
}
