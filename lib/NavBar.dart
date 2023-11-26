import 'package:commerce/FavouritePage.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'MyProfile.dart';
import 'package:get/get.dart';


class NavBar extends StatelessWidget {
  const NavBar({super.key, Key? k});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(

      bottomNavigationBar:
      Obx(
            () => BottomNavigationBar(type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.deepOrangeAccent,

          elevation: 0,
          currentIndex: controller.selectedIndex.value,
          onTap: (index) =>
          controller.selectedIndex.value = index,

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.messenger), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [const Home(), const FavoriteScreen(), const Scaffold(), const MyProfile()];

}




