import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/views/Drawer/pages/notifications/notifications_detials.dart';

import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';
import 'package:swish_app/widgets/listtile/listtile.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundcolor,
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(top: Dimensions.height20),
              child: Builder(
                builder: (context) => CardMenuIcon(
                  customIcon: Icons.arrow_back_ios_new_rounded,
                  onTap: () {
                    Get.back();
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20, top: Dimensions.height10),
              child: Text(
                'Notifications',
                style: StyleText.getBoldStyle(
                  color: AppColors.textcolor,
                  fontSize: Dimensions.font22,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height10),
                child: Column(
                  children: [
                    CustomListTile(
                      backgroundColor: Colors.white,
                      iconColor: AppColors.buttonColor,
                      title: '01/01/2024',
                      titleTextStyle: StyleText.getRegularStyle(
                        color: AppColors.textcolor,
                        fontSize: Dimensions.font16,
                      ),
                      subtitleTextStyle: StyleText.getBoldStyle(
                        color: AppColors.textcolor,
                        fontSize: Dimensions.font20,
                      ),
                      subtitle: 'Your car is fully charged',
                      trailingIcon: Icons.arrow_forward_ios_rounded,
                      iconSize: Dimensions.height20,
                      ontap: () {
                        Get.to(() => const NotificationDetails());
                      },
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    CustomListTile(
                      backgroundColor: Colors.white,
                      iconColor: AppColors.buttonColor,
                      title: '01/01/2024',
                      titleTextStyle: StyleText.getRegularStyle(
                        color: AppColors.textcolor,
                        fontSize: Dimensions.font16,
                      ),
                      subtitleTextStyle: StyleText.getBoldStyle(
                        color: AppColors.textcolor,
                        fontSize: Dimensions.font20,
                      ),
                      subtitle: 'Your car is fully charged',
                      trailingIcon: Icons.arrow_forward_ios_rounded,
                      iconSize: Dimensions.height20,
                      ontap: () {
                        Get.to(() => const NotificationDetails());
                      },
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    CustomListTile(
                      backgroundColor: Colors.white,
                      iconColor: AppColors.buttonColor,
                      title: '01/01/2024',
                      titleTextStyle: StyleText.getRegularStyle(
                        color: AppColors.textcolor,
                        fontSize: Dimensions.font16,
                      ),
                      subtitleTextStyle: StyleText.getBoldStyle(
                        color: AppColors.textcolor,
                        fontSize: Dimensions.font20,
                      ),
                      subtitle: 'Your car is fully charged',
                      trailingIcon: Icons.arrow_forward_ios_rounded,
                      iconSize: Dimensions.height20,
                      ontap: () {
                        Get.to(() => const NotificationDetails());
                      },
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    CustomListTile(
                      backgroundColor: Colors.white,
                      iconColor: AppColors.buttonColor,
                      title: '01/01/2024',
                      titleTextStyle: StyleText.getRegularStyle(
                        color: AppColors.textcolor,
                        fontSize: Dimensions.font16,
                      ),
                      subtitleTextStyle: StyleText.getBoldStyle(
                        color: AppColors.textcolor,
                        fontSize: Dimensions.font20,
                      ),
                      subtitle: 'Your car is fully charged',
                      trailingIcon: Icons.arrow_forward_ios_rounded,
                      iconSize: Dimensions.height20,
                      ontap: () {
                        Get.to(() => const NotificationDetails());
                      },
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    CustomListTile(
                      backgroundColor: Colors.white,
                      iconColor: AppColors.buttonColor,
                      title: '01/01/2024',
                      titleTextStyle: StyleText.getRegularStyle(
                        color: AppColors.textcolor,
                        fontSize: Dimensions.font16,
                      ),
                      subtitleTextStyle: StyleText.getBoldStyle(
                        color: AppColors.textcolor,
                        fontSize: Dimensions.font20,
                      ),
                      subtitle: 'Your car is fully charged',
                      trailingIcon: Icons.arrow_forward_ios_rounded,
                      iconSize: Dimensions.height20,
                      ontap: () {
                        Get.to(() => const NotificationDetails());
                      },
                    ),
                  ],
                ))
          ]),
        ));
  }
}
