import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';

import 'package:swish_app/views/Drawer/drawer.dart';
import 'package:swish_app/views/Drawer/pages/zone/zondetails.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';

import 'package:swish_app/widgets/listtile/listtile.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: Dimensions.height10),
              child: Builder(
                builder: (context) => CardMenuIcon(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.paddingHor20, top: Dimensions.height10),
              child: Text(
                'Where do you want to recharge?',
                style: StyleText.getBoldStyle(
                  fontSize: Dimensions.font22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.paddingHor20, top: Dimensions.height10),
              child: Text(
                'Select the zone where you need to get energy',
                style: StyleText.getBoldStyle(
                    fontSize: Dimensions.font16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.mygreycolor),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width3, top: Dimensions.height10),
              child: CustomListTile(
                iconColor: AppColors.buttonColor,
                title: 'Zone 1',
                subtitle: 'Description zone 1',
                trailingIcon: Icons.arrow_forward_ios,
                iconSize: Dimensions.height20,
                ontap: () {
                  Get.to(() => const ZoneDetails());
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.width20),
              child: Row(
                children: [
                  Text(
                    '05/22',
                    style: StyleText.getRegularStyle(
                      fontSize: Dimensions.font16,
                      color: AppColors.textcolor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: Dimensions.width10),
                  InkWell(
                    onTap: () {
                      Get.to(() => const ZoneDetails());
                    },
                    child: Image.asset(
                      'assets/images/bornes.PNG',
                      height: Dimensions.height30,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  top: Dimensions.height10,
                  right: Dimensions.width20),
              child: Divider(
                thickness: 0.7,
                color: AppColors.dividorcolor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.width3),
              child: CustomListTile(
                iconColor: AppColors.buttonColor,
                title: 'Zone 2',
                subtitle: 'Description zone 2',
                trailingIcon: Icons.arrow_forward_ios,
                iconSize: height * 0.02,
                ontap: () {
                  Get.to(() => const ZoneDetails());
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.width20),
              child: Row(
                children: [
                  Text(
                    '05/28',
                    style: StyleText.getRegularStyle(
                      fontSize: Dimensions.font16,
                      color: AppColors.textcolor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: Dimensions.width10),
                  InkWell(
                    onTap: () {
                      Get.to(() => const ZoneDetails());
                    },
                    child: Image.asset(
                      'assets/images/bornes.PNG',
                      height: Dimensions.height30,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  top: Dimensions.height10,
                  right: Dimensions.width20),
              child: Divider(
                thickness: 0.7,
                color: AppColors.dividorcolor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.width3),
              child: CustomListTile(
                iconColor: AppColors.buttonColor,
                title: 'Zone 3',
                subtitle: 'Description zone 3',
                trailingIcon: Icons.arrow_forward_ios,
                iconSize: height * 0.02,
                ontap: () {
                  Get.to(() => const ZoneDetails());
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.width20),
              child: Row(
                children: [
                  Text(
                    '05/24',
                    style: StyleText.getRegularStyle(
                      fontSize: Dimensions.font16,
                      color: AppColors.textcolor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: Dimensions.width10),
                  InkWell(
                    onTap: () {
                      Get.to(() => const ZoneDetails());
                    },
                    child: Image.asset(
                      'assets/images/bornes.PNG',
                      height: Dimensions.height30,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  top: Dimensions.height10,
                  right: Dimensions.width20),
              child: Divider(
                thickness: 0.7,
                color: AppColors.dividorcolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
