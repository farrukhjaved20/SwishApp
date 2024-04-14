import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';

import 'package:swish_app/views/Drawer/drawer.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';
import 'package:swish_app/views/Drawer/pages/settings/commuication_screen.dart';
import 'package:swish_app/views/Drawer/pages/settings/deletaccount.dart';
import 'package:swish_app/views/Drawer/pages/settings/logout.dart';
import 'package:swish_app/widgets/listtile/listtile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      backgroundColor: AppColors.backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: Dimensions.height20),
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
                  left: Dimensions.width20, top: Dimensions.height10),
              child: Text(
                'Settings',
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
                  top: Dimensions.height20),
              child: CustomListTile(
                title: 'Communication',
                backgroundColor: Colors.white,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                iconSize: Dimensions.height20,
                iconColor: AppColors.buttonColor,
                ontap: () {
                  Get.to(() => const CommunicationDetails());
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              child: CustomListTile(
                title: 'Terms of Service',
                subtitle:
                    'The term of service is a legally binding agreement between you and us, that define the rules and restrictions of the service provide to you.',
                backgroundColor: Colors.white,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                iconSize: Dimensions.height20,
                subtitleTextStyle: StyleText.getRegularStyle(
                  color: AppColors.textcolor,
                  fontWeight: FontWeight.w400,
                  fontSize: Dimensions.font16,
                ),
                iconColor: AppColors.buttonColor,
                ontap: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              child: CustomListTile(
                title: 'Privacy Policy',
                subtitle:
                    'The privacy policy defines what personal information we collect and how use it to provide the service.',
                backgroundColor: Colors.white,
                subtitleTextStyle: StyleText.getRegularStyle(
                  color: AppColors.textcolor,
                  fontWeight: FontWeight.w400,
                  fontSize: Dimensions.font16,
                ),
                trailingIcon: Icons.arrow_forward_ios_rounded,
                iconSize: Dimensions.height20,
                iconColor: AppColors.buttonColor,
                ontap: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              child: CustomListTile(
                title: 'Acknowledgments',
                backgroundColor: Colors.white,
                iconColor: AppColors.buttonColor,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                iconSize: Dimensions.height20,
                ontap: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              child: CustomListTile(
                title: 'Permissions',
                backgroundColor: Colors.white,
                iconColor: AppColors.buttonColor,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                iconSize: Dimensions.height20,
                ontap: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              child: CustomListTile(
                title: 'Log Out',
                backgroundColor: Colors.white,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                iconColor: AppColors.buttonColor,
                iconSize: Dimensions.height20,
                ontap: () {
                  Get.to(() => const LogOut());
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              child: CustomListTile(
                title: 'Delete Account',
                backgroundColor: Colors.white,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                iconSize: Dimensions.height20,
                iconColor: AppColors.buttonColor,
                ontap: () {
                  Get.to(() => const DeleteAccount());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
