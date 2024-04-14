import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/controller/checkbox.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';
import 'package:swish_app/widgets/whitecontainer/whitecontainer.dart';

class CommunicationDetails extends StatelessWidget {
  const CommunicationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final CheckboxController checkbox = Get.put(CheckboxController());
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
                'Communication',
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
                    Obx(
                      () => CheckboxListTile(
                        title: Text(
                          "Receiving emails",
                          style: StyleText.getRegularStyle(
                            color: AppColors.textcolor,
                            fontSize: Dimensions.font20,
                          ),
                        ),
                        value: checkbox.isChecked.value,
                        onChanged: (bool? newValue) {
                          checkbox.changetick();
                        },
                        activeColor: Colors.black,
                        checkColor: Colors.white,
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount codes,marketing",
                              style: StyleText.getRegularStyle(
                                color: AppColors.textcolor,
                                fontWeight: FontWeight.w400,
                                fontSize: Dimensions.font18,
                              ),
                            ),
                            Text(
                              "advertisements,newsletter.",
                              style: StyleText.getRegularStyle(
                                color: AppColors.textcolor,
                                fontWeight: FontWeight.w400,
                                fontSize: Dimensions.font18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
