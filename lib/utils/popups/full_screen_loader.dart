import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niet_placements/comman/widgets/loaders/animation_loader.dart';
import 'package:niet_placements/utils/constants/colors.dart';
import 'package:niet_placements/utils/helpers/helper_functions.dart';

class SFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
              canPop: false,
              child: Container(
                color: SHelperFunctions.isDarkMode(Get.context!)
                    ? SColors.dark
                    : SColors.white,
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(height: 100),
                    SAnimationLoaderWidget(text: text, animation: animation),
                  ],
                ),
              ),
            ));
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
