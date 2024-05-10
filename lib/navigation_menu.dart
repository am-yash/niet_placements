import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:niet_placements/features/chat/screens/chat_home.dart';
import 'package:niet_placements/features/explore/screens/explore.dart';
import 'package:niet_placements/features/main_app/screens/home/home.dart';
import 'package:niet_placements/features/notifications/screens/notification_screen.dart';
import 'package:niet_placements/features/personalization/screens/profile_screen/profile_scrn.dart';
import 'package:niet_placements/utils/constants/colors.dart';
import 'package:niet_placements/utils/helpers/helper_functions.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    // screens to navigate
    const HomeScreen(),
    const ExploreScreen(),
    const NotificationScreen(),
    // const changeBio(),
    const profileScreen(),
  ];
}

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NavigationDestination> destinations = [
      // screen navigation labels
      const NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
      const NavigationDestination(
          icon: Icon(Iconsax.medal_star), label: 'Jobs'),
      const NavigationDestination(
          icon: Icon(Iconsax.notification), label: 'Notifications'),
      const NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
    ];

    // dont change below code
    final controller = Get.put(NavigationController());
    final darkMode = SHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (Index) =>
              controller.selectedIndex.value = Index,
          backgroundColor: darkMode ? Colors.black : Colors.white,
          indicatorColor: darkMode
              ? SColors.white.withOpacity(0.1)
              : SColors.black.withOpacity(0.1),
          destinations: destinations,
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}
