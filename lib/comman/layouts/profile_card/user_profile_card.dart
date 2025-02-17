import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:niet_placements/comman/containers/roundedContainer.dart';
import 'package:niet_placements/comman/layouts/list_tiles/userprofile_img_tile.dart';
import 'package:niet_placements/features/personalization/controllers/user_controller.dart';
import 'package:niet_placements/features/personalization/screens/edit_profile/edit_profile.dart';
import 'package:niet_placements/features/personalization/screens/profile_screen/Widgets/user_profile_bottemtiles.dart';
import 'package:niet_placements/features/personalization/screens/profile_screen/Widgets/user_profile_data_containers.dart';
import 'package:niet_placements/features/personalization/screens/settings_screen/user_settings.dart';
import 'package:niet_placements/utils/constants/colors.dart';
import 'package:niet_placements/utils/constants/images_str.dart';
import 'package:niet_placements/utils/constants/sizes.dart';
import 'package:niet_placements/utils/helpers/helper_functions.dart';

class userProfileTileMain extends StatelessWidget {
  const userProfileTileMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // user profile card
        userProfileImgTile(
            likes: controller.user.value.likes,
            profileCoverImg: const AssetImage(SImages.profileCardBg),
            profileImg: const AssetImage(SImages.profileImg),
            leadingWidget: roundedContainer(
              radius: 200,
              backgroundColor: dark ? SColors.darkerGrey : SColors.lightGrey,
                child: IconButton(
              onPressed: () => Get.to(() => const UserSettings()),
              icon: const Icon(
                Iconsax.setting_24,
                size: 28,
              ),
              color: dark ? SColors.white : SColors.black,
            ))),
        // user profile data
        Obx(() {
          return UserProfileDataContainer(
              profileName: controller.user.value.fullName,
              profileUsername: controller.user.value.username,
              profileBio: controller.user.value.bio);
        }),

        const SizedBox(
          height: Sizes.spaceBtwItems,
        ),
        // user profile card bottom buttons
        userProfileCardBottomButtons(
            button1Text: "Edit Profile",
            button1OnPressed: () => Get.to(() => const editProfileScreen()),
            button2Text: "Share Portfolio",
            button2OnPressed: () {}),
      ],
    );
  }
}
