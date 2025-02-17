import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niet_placements/features/auth/controllers.login/login_controller.dart';
import 'package:niet_placements/utils/constants/colors.dart';
import 'package:niet_placements/utils/constants/sizes.dart';
import 'package:niet_placements/utils/device/device_utility.dart';
import 'package:niet_placements/utils/helpers/helper_functions.dart';

class SSocialButtons extends StatelessWidget {
  const SSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(loginController());
    final dark = SHelperFunctions.isDarkMode(context);
    return Positioned(
      // alignment: Alignment.bottomCenter,
      bottom: SDeviceUtils.getBottomNavigationBarHeight(),
      right: Sizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => controller.googleSignIn(),
        style: ElevatedButton.styleFrom(
            backgroundColor: dark ? SColors.white : SColors.black,
            padding: const EdgeInsets.symmetric(
                horizontal: Sizes.defaultSpace ,
                vertical: Sizes.spaceBtwInputFields),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Sizes.buttonRadius + 20),
            )),
        child: Container(
          width: SDeviceUtils.getScreenWidth(context) - Sizes.defaultSpace * 4,
          alignment: Alignment.center,
          child: const Image(
              // width: SHelperFunctions.screenWidth() * 0.8,
              height: Sizes.iconLg,
              image: AssetImage('assets/logo/google.png')),
        ),
      ),
    );
  }
}
