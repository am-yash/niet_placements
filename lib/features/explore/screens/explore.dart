import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:niet_placements/comman/containers/roundedContainer.dart';
import 'package:niet_placements/comman/containers/search_container.dart';
import 'package:niet_placements/comman/texts/company_title.dart';
import 'package:niet_placements/comman/texts/section_heading.dart';
import 'package:niet_placements/comman/widgets/appbar/appbar.dart';
import 'package:niet_placements/comman/widgets/images/rounded_image.dart';
import 'package:niet_placements/utils/constants/colors.dart';
import 'package:niet_placements/utils/constants/images_str.dart';
import 'package:niet_placements/utils/constants/sizes.dart';
import 'package:niet_placements/utils/device/device_utility.dart';
import 'package:niet_placements/utils/helpers/helper_functions.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 2, vsync: this);
    final dark = SHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 7),
            SAppBar(
              title: Text(
                'Jobs',
                style: Theme.of(context).textTheme.headlineLarge!.apply(
                      color: dark ? Colors.white : Colors.black,
                    ),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    alignment: Alignment.centerLeft,
                    icon: Icon(

                      Iconsax.setting_35,
                      color: dark ? Colors.white : Colors.black,
                    ))
              ],
            ),
            const SizedBox(height: 5),
            const BSearchContainer(text: 'Search'),
            const SizedBox(height: 5),
            TabBar(
              // controller: _tabController,
              // indics.8)),
              tabAlignment: TabAlignment.start,
              labelColor: dark ? Colors.white : Colors.black,
              isScrollable: true,
              indicatorColor: SColors.primary,

              labelPadding:
                  const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
              tabs: const [
                Tab(
                  child: Text(
                    "Full-Time",
                  ),
                ),
                Tab(
                  child: Text(
                    "Interships",
                  ),
                ),
              ],
            ),
            // const SizedBox(height: Sizes.defaultSpace),

            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(Sizes.defaultSpace),
                      child: Column(
                        children: [
                          PostedJobTile(
                            CompanyImgURL: SImages.companyLogo1,
                            jobTitle: "Senior Software Developer",
                            companyName: "TCS",
                            jobLocation: "Noida, Uttar Pradesh",
                            jobCTC: "₹ 10,00,000 - ₹ 15,00,000",
                            jobCPGA: "7.0",
                            jobLastDate: "15th August 2021",
                            onApplyNow: () {},
                          ),
                          PostedJobTile(
                            CompanyImgURL: SImages.companyLogo2,
                            jobTitle: "Senior Software Developer",
                            companyName: "Google",
                            jobLocation: "Noida, Uttar Pradesh",
                            jobCTC: "₹ 10,00,000 - ₹ 15,00,000",
                            jobCPGA: "7.0",
                            jobLastDate: "15th August 2021",
                            onApplyNow: () {},
                          ),
                          PostedJobTile(
                            CompanyImgURL: SImages.companyLogo3,
                            jobTitle: "Senior Software Developer",
                            companyName: "Google",
                            jobLocation: "Noida, Uttar Pradesh",
                            jobCTC: "₹ 10,00,000 - ₹ 15,00,000",
                            jobCPGA: "7.0",
                            jobLastDate: "15th August 2021",
                            onApplyNow: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.all(Sizes.defaultSpace),
                        child: Column(
                          children: [
                            PostedJobTile(
                              CompanyImgURL: SImages.companyLogo4,
                              jobTitle: "Senior Software Developer",
                              companyName: "Google",
                              jobLocation: "Noida, Uttar Pradesh",
                              jobCTC: "₹ 10,00,000 - ₹ 15,00,000",
                              jobCPGA: "7.0",
                              jobLastDate: "15th August 2021",
                              onApplyNow: () {},
                            ),
                            PostedJobTile(
                              CompanyImgURL: SImages.companyLogo5,
                              jobTitle: "Senior Software Developer",
                              companyName: "Google",
                              jobLocation: "Noida, Uttar Pradesh",
                              jobCTC: "₹ 10,00,000 - ₹ 15,00,000",
                              jobCPGA: "7.0",
                              jobLastDate: "15th August 2021",
                              onApplyNow: () {},
                            ),
                            PostedJobTile(
                              CompanyImgURL: SImages.companyLogo2,
                              jobTitle: "Senior Software Developer",
                              companyName: "Google",
                              jobLocation: "Noida, Uttar Pradesh",
                              jobCTC: "₹ 10,00,000 - ₹ 15,00,000",
                              jobCPGA: "7.0",
                              jobLastDate: "15th August 2021",
                              onApplyNow: () {},
                            ),
                          ],
                        )),
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

class PostedJobTile extends StatelessWidget {
  const PostedJobTile({
    super.key, required this.jobTitle, required this.jobLocation, required this.jobCTC, required this.jobCPGA, this.jobLastDate, required this.onApplyNow, required this.CompanyImgURL, required this.companyName,

  });

 final String jobTitle;
 final String companyName;
  final String jobLocation;
  final String jobCTC;
  final String jobCPGA;
  final String? jobLastDate;
  final VoidCallback onApplyNow;
  final String CompanyImgURL;


  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [ roundedContainer( // Job Card
          padding: const EdgeInsets.all(8),
          backgroundColor: dark ? SColors.dark : SColors.light.withOpacity(0.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  roundedContainer(
                    height: 80,
                    // padding: const EdgeInsets.all(Sizes.s),
                    backgroundColor:
                        dark ? SColors.dark : SColors.light,
                    child: SRoundedImage(
                      height: 80,
                      width: 80,
                      imageURL: CompanyImgURL,
                      applyImgRadius: true,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: Sizes.spaceBtwItems),
                  SizedBox(
                    height: 80,
                    width: (SDeviceUtils.getScreenWidth(context) - Sizes.defaultSpace * 2) - 116,
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CompanyTitleText(

                            title: jobTitle),
                        SizedBox(height: Sizes.spaceBtwItems/2),
                        CompanyTitleText(
                    smallSize: true, maxLines: 1,
                            title: companyName
                        ),
                        SizedBox(height: Sizes.spaceBtwItems/2),
                        CompanyTitleText(
                            smallSize: true, maxLines: 1,
                            title: jobLocation
                        ),
                        SizedBox(height: Sizes.spaceBtwItems/2),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Sizes.spaceBtwItems),



              Text("CTC: $jobCTC | Required CGPA: $jobCPGA",
                  maxLines: 2,
                  style: Theme.of(context).textTheme.labelMedium!.apply(
                    color: dark ? Colors.white : Colors.black,
                    fontWeightDelta: 2,

                  )
              ),
              const SizedBox(height: Sizes.spaceBtwItems/3),
              const CompanyTitleText(
                  smallSize: true, maxLines: 4,
                  title: "We are looking for a Senior Software Developer with 3-5 years of experience in Java, Spring Boot, and Microservices."
              ),
              // const SizedBox(height: Sizes.spaceBtwItems/3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,

                children:[
              Text(" Last Date: $jobLastDate",
                  maxLines: 1,
                  style: Theme.of(context).textTheme.labelMedium!.apply(
                    color: dark ? Colors.white : Colors.black,
                    fontWeightDelta: 2,

                  )
              ),

                  TextButton(onPressed: onApplyNow ,

                    child: const Text("Apply Now", style: TextStyle(color: SColors.primary,
                    fontSize: 14,
                    ),)),
                 ]
              ),

            ],
          )),
          const SizedBox(height: Sizes.spaceBtwItems), ]
    );
  }
}
