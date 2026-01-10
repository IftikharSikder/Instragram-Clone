import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/features/chat/screens/chat_screen.dart';
import 'package:untitled/features/home/controllers/home_controllers.dart';
import 'package:untitled/features/home/widgets/home_view_widget.dart';
import 'package:untitled/features/profile/screens/profile_screen.dart';
import 'package:untitled/features/reels/screens/reels_screen.dart';
import 'package:untitled/features/search/screen/search_screen.dart';
import 'package:untitled/util/images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screens = [HomeViewWidget(), ReelsScreen(), ChatScreen(), SearchScreen(), ProfileScreen()];

    return GetBuilder<HomeControllers>(
      builder: (homeController) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: screens[homeController.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: homeController.currentIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: BottomNavItemImage(imageUrl: Images.home),
                backgroundColor: Colors.black,
                label: '',
              ),
              BottomNavigationBarItem(
                icon: BottomNavItemImage(imageUrl: Images.reals),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: BottomNavItemImage(imageUrl: Images.send),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: BottomNavItemImage(imageUrl: Images.search),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ClipRRect(borderRadius: BorderRadius.circular(50), child: Image.asset(Images.person, width: 26, height: 26)),
                label: '',
              ),
            ],
            onTap: (index) {
              homeController.setNewIndex(index: index);
            },
          ),
        );
      },
    );
  }
}

class BottomNavItemImage extends StatelessWidget {
  final String imageUrl;
  const BottomNavItemImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Image.asset(imageUrl, color: Colors.white, width: 24, height: 24);
  }
}
