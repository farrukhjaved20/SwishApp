import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/widgets/Custom_button_widgets/custom_button.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';
import 'package:swish_app/widgets/whitecontainer/whitecontainer.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                  left: Dimensions.width20, top: Dimensions.height10),
              child: Text(
                'Log out',
                style: StyleText.getBoldStyle(
                  color: AppColors.textcolor,
                  fontSize: Dimensions.font22,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: Dimensions.width3,
                  left: Dimensions.width3,
                  top: Dimensions.height10),
              child: RoundedWhiteContainer(
                  child: Column(
                children: [
                  SizedBox(height: Dimensions.height30),
                  Center(
                      child: Text(
                    'See you soon\n    Johanna!',
                    style: StyleText.getBoldStyle(
                      color: AppColors.textcolor,
                      fontSize: Dimensions.font22,
                    ),
                  )),
                  SizedBox(height: Dimensions.height30),
                ],
              )),
            ),
            SizedBox(height: Dimensions.height30),
            Center(
              child: Custombuttondesign(
                fontSize: Dimensions.font20,
                title: 'Log out',
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
