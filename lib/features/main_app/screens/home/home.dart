// import 'package:flutter/material.dart';
// import 'package:niet_placements/features/main_app/screens/home/widgets/home_appbar.dart';
// import 'package:niet_placements/utils/constants/colors.dart';
// import 'package:niet_placements/utils/constants/sizes.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Expanded(
//             flex: 3,
//             child: Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     SColors.primary.withOpacity(.75),
//                     SColors.primary.withOpacity(0)
//                   ],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//               ),
//               padding: const EdgeInsets.symmetric(
//                   horizontal: Sizes.defaultSpace, vertical: Sizes.s),
//               child: const Column(
//                 children: [
//                   SHomeAppbar(),
//                   SizedBox(height: Sizes.spaceBtwItems),
//                   Center(
//                     child: Text(
//                       'Welcome!',
//                       style: TextStyle(
//                         fontSize: 32.0,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Colors.pink[100]!, Colors.white],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//               ),
//               padding: const EdgeInsets.symmetric(horizontal: 20.0),
//               child: Center(
//                 // Centering the content
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       'Matchmaking Feature Coming Soon',
//                       style: TextStyle(
//                         fontSize: 24.0,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 20.0),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Navigate to '/explore' route
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.pink[300],
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 32.0, vertical: 16.0),
//                       ),
//                       child: const Text(
//                         'Explore More',
//                         style: TextStyle(
//                           fontSize: 18.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:niet_placements/comman/containers/search_container.dart';
import 'package:niet_placements/comman/texts/section_heading.dart';
import 'package:niet_placements/comman/widgets/images/rounded_image.dart';
import 'package:niet_placements/features/main_app/screens/home/widgets/home_appbar.dart';
import 'package:niet_placements/utils/constants/colors.dart';
import 'package:niet_placements/utils/constants/images_str.dart';
import 'package:niet_placements/utils/constants/sizes.dart';

import '../../../../comman/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // home widgets
            SPrimaryHeaderContainer(
                bgcolor: SColors.primary,
                child: Column(
                  children: [
                    SHomeAppbar(),
                    SizedBox(height: Sizes.spaceBtwItems),
                    BSearchContainer(
                      text: "Search",
                    ),
                    SizedBox(height: Sizes.spaceBtwSections),
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: Sizes.spaceBtwItems),
                  SRoundedImage(imageURL: SImages.profileCardBg),
                  SizedBox(height: Sizes.spaceBtwItems),
                  BSectionHeading(
                    title: 'Welcome!',
                  ),
                  SizedBox(height: Sizes.spaceBtwItems),
                  Text(
                    'Welcome to the NIET Placements App. Here you can find all the information about the placements and internships available for the students of NIET. You can also find the list of companies visiting the campus for placements and internships.',
                    textAlign: TextAlign.start,

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
