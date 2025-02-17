import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class onBoardingSn extends StatelessWidget {
  const onBoardingSn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: SDeviceUtils.getBottomNavigationBarHeight() + 85,
      left: Sizes.defaultSpace ,
      child: Text(
        "Continue with",
        style: Theme.of(context).textTheme.bodyLarge,
        textAlign: TextAlign.center,
      ),
    );
  }
}
