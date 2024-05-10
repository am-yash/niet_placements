import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:niet_placements/comman/layouts/list_tiles/settings_menu_tile.dart';
import 'package:niet_placements/comman/layouts/list_tiles/user_profile.dart';
import 'package:niet_placements/comman/widgets/appbar/appbar.dart';
import 'package:niet_placements/data/repositories/authentication_repo/authentication_repository.dart';
import 'package:niet_placements/utils/constants/sizes.dart';

class UserSettings extends StatelessWidget {
  const UserSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SAppBar(
          title: Text(
            'Settings',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          showBackArrow: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              // const BSectionHeading(
              //   title: 'Settings',
              // ),
              const SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              const BSettingMenuTile(
                  title: 'My College',
                  icon: Iconsax.building,
                  subTitle: 'NOIDA INSTITUTE OF ENGINEERING AND TECHNOLOGY'),
              const SizedBox(height: Sizes.spaceBtwSections),
              // user profile card
              // const SUserProfileTile(),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () =>
                          AuthenticationRepository.instance.signOut(),
                      child: const Text('Logout'))),
              const SizedBox(
                height: Sizes.spaceBtwSections * 2.5,
              )
            ],
          ),
        ));
  }
}
