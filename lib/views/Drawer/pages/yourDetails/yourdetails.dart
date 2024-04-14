import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/views/Drawer/drawer.dart';
import 'package:swish_app/views/Drawer/pages/yourDetails/changepassword.dart';
import 'package:swish_app/views/Drawer/pages/yourDetails/emailaddress.dart';
import 'package:swish_app/views/Drawer/pages/yourDetails/language.dart';
import 'package:swish_app/views/Drawer/pages/yourDetails/namedetails.dart';
import 'package:swish_app/views/Drawer/pages/yourDetails/phonedetails.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';
import 'package:swish_app/widgets/listtile/listtile.dart';

class YourDetails extends StatelessWidget {
  const YourDetails({super.key});

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
                'Your details',
                style: StyleText.getBoldStyle(
                  color: AppColors.textcolor,
                  fontSize: Dimensions.font22,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: Dimensions.width20,
                  left: Dimensions.width20,
                  top: Dimensions.height20),
              child: CustomListTile(
                backgroundColor: Colors.white,
                iconColor: AppColors.buttonColor,
                subtitleTextStyle: StyleText.getRegularStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.textcolor,
                  fontSize: Dimensions.font16,
                ),
                title: 'First name, surname',
                subtitle: 'Johanna Doe',
                trailingIcon: Icons.arrow_forward_ios,
                iconSize: Dimensions.height20,
                ontap: () {
                  Get.to(() => const NameDetails());
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: Dimensions.width20,
                  left: Dimensions.width20,
                  top: Dimensions.height20),
              child: CustomListTile(
                backgroundColor: Colors.white,
                iconColor: AppColors.buttonColor,
                title: 'Phone number',
                subtitle: '+42 00000000000',
                subtitleTextStyle: StyleText.getRegularStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.textcolor,
                  fontSize: Dimensions.font16,
                ),
                trailingIcon: Icons.arrow_forward_ios,
                iconSize: Dimensions.height20,
                ontap: () {
                  Get.to(() => const PhoneDetails());
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: Dimensions.width20,
                  left: Dimensions.width20,
                  top: Dimensions.height20),
              child: CustomListTile(
                backgroundColor: Colors.white,
                iconColor: AppColors.buttonColor,
                title: 'Email address',
                subtitleTextStyle: StyleText.getRegularStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.textcolor,
                  fontSize: Dimensions.font16,
                ),
                subtitle: 'johanna@email.com',
                trailingIcon: Icons.arrow_forward_ios,
                iconSize: Dimensions.height20,
                ontap: () {
                  Get.to(() => const EmailAddress());
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: Dimensions.width20,
                  left: Dimensions.width20,
                  top: Dimensions.height20),
              child: CustomListTile(
                backgroundColor: Colors.white,
                iconColor: AppColors.buttonColor,
                title: 'Language',
                subtitleTextStyle: StyleText.getRegularStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.textcolor,
                  fontSize: Dimensions.font16,
                ),
                subtitle: 'English',
                trailingIcon: Icons.arrow_forward_ios,
                iconSize: Dimensions.height20,
                ontap: () {
                  Get.to(() => const Languageselect());
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: Dimensions.width20,
                  left: Dimensions.width20,
                  top: Dimensions.height20),
              child: ListTile(
                tileColor: Colors.white,
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.radius12)),
                title: Text(
                  'Change Password',
                  style: StyleText.getBoldStyle(
                    color: AppColors.textcolor,
                    fontSize: Dimensions.font18,
                  ),
                ),
                trailing: Icon(
                  size: Dimensions.height20,
                  color: AppColors.buttonColor,
                  Icons.arrow_forward_ios,
                ),
                onTap: () {
                  Get.to(() => const ChangePassword());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
