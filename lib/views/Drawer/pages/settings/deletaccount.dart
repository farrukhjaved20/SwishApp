import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/widgets/Custom_button_widgets/custom_button.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';
import 'package:swish_app/widgets/whitecontainer/whitecontainer.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({super.key});

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
                  left: Dimensions.width20, top: Dimensions.height20),
              child: Text(
                'Delete account',
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
                  top: Dimensions.height20),
              child: RoundedWhiteContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Do you want to delete you Swish account?",
                        style: StyleText.getRegularStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.textcolor,
                          fontSize: Dimensions.font18,
                        )),
                    SizedBox(height: Dimensions.height10),
                    Text(
                        "All your data will be deleted including your charging history and receipts.",
                        style: StyleText.getRegularStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.textcolor,
                          fontSize: Dimensions.font18,
                        )),
                    SizedBox(height: Dimensions.height10),
                    Text("Why are you deleting your account?",
                        style: StyleText.getRegularStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.textcolor,
                          fontSize: Dimensions.font18,
                        )),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: Dimensions.height10,
                          right: Dimensions.width3,
                          left: Dimensions.width3,
                          top: Dimensions.height20),
                      child: Container(
                        height: Dimensions.height190,
                        width: Dimensions.width350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: AppColors.textbluecolor, width: 1)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: Dimensions.height30),
            Center(
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white30),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                ),
                child: Text("Keep account",
                    style: StyleText.getRegularStyle(
                      color: AppColors.textbluecolor,
                      fontSize: Dimensions.font18,
                    )),
              ),
            ),
            SizedBox(height: Dimensions.height10),
            Center(
              child: Custombuttondesign(
                fontSize: Dimensions.font20,
                title: 'Delete account',
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
