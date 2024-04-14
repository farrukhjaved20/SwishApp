import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/widgets/Custom_button_widgets/custom_button.dart';
import 'package:swish_app/views/Drawer/drawer.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';

class ChangeCardLabel extends StatelessWidget {
  const ChangeCardLabel({super.key});

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
                child: Row(
                  children: [
                    Text(
                      "RFID",
                      style: StyleText.getRegularStyle(
                        color: AppColors.textcolor,
                        fontSize: Dimensions.font22,
                      ),
                    ),
                    Text(
                      ' "number"',
                      style: StyleText.getRegularStyle(
                        color: AppColors.textcolor,
                        fontSize: Dimensions.font22,
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height10),
              child: ListTile(
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.height30)),
                tileColor: Colors.white,
                title: Padding(
                  padding: EdgeInsets.only(
                      top: Dimensions.height10, bottom: Dimensions.height10),
                  child: Image.asset(
                    'assets/images/appcredit.png',
                    height: Dimensions.height50,
                  ),
                ),
                subtitle: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: Dimensions.height10),
                    child: Text(
                      'Change Card label',
                      style: StyleText.getRegularStyle(
                        color: AppColors.textcolor,
                        fontSize: Dimensions.font18,
                      ),
                    ),
                  ),
                ),
                trailing: Icon(
                  size: Dimensions.height15,
                  color: AppColors.buttonColor,
                  Icons.arrow_forward_ios_rounded,
                ),
                onTap: () {},
              ),
            ),
            SizedBox(height: Dimensions.height20),
            Center(
              child: Custombuttondesign(
                buttonColor: AppColors.buttonredcolor,
                fontSize: Dimensions.font18,
                title: 'Remove RFID card',
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
