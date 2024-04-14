import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';
import 'package:swish_app/widgets/whitecontainer/whitecontainer.dart';

class NotificationDetails extends StatelessWidget {
  const NotificationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  right: Dimensions.width3,
                  left: Dimensions.width3,
                  top: Dimensions.height20),
              child: RoundedWhiteContainer(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '01/01/2024',
                        style: StyleText.getRegularStyle(
                          color: AppColors.textcolor,
                          fontWeight: FontWeight.w400,
                          fontSize: Dimensions.font16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Dimensions.height20),
                  Image.asset(
                    'assets/images/appelectric.png',
                    height: Dimensions.height30,
                  ),
                  SizedBox(height: Dimensions.height10),
                  Text(
                    'Johanna',
                    style: StyleText.getBoldStyle(
                      color: AppColors.textcolor,
                      fontSize: Dimensions.font22,
                    ),
                  ),
                  Text(
                    'your car is fully charged',
                    style: StyleText.getBoldStyle(
                      color: AppColors.textcolor,
                      fontSize: Dimensions.font22,
                    ),
                  ),
                  SizedBox(height: Dimensions.height10),
                  Text(
                    'Please unplug and remove your car to let\n   other colleagues to charge their cars',
                    style: StyleText.getRegularStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.textcolor,
                      fontSize: Dimensions.font16,
                    ),
                  ),
                  SizedBox(height: Dimensions.height10),
                  Text(
                    'Thanks for the cooperation!',
                    style: StyleText.getRegularStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.textcolor,
                      fontSize: Dimensions.font16,
                    ),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
