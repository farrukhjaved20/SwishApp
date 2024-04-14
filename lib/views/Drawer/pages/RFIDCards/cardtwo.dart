import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';
import 'package:swish_app/widgets/whitecontainer/whitecontainer.dart';

class Cardtwo extends StatelessWidget {
  const Cardtwo({super.key});

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
                  left: Dimensions.width20, top: Dimensions.height10),
              child: Text(
                'New RFID',
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
                borderRadius: Dimensions.radius12,

                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/appcredit.png',
                      height: Dimensions.height50,
                    ),
                    TextField(
                      cursorColor: AppColors.textcolor,
                      cursorWidth: 1.0,
                      decoration: InputDecoration(
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        hintText: 'Charge card label',
                        hintStyle: StyleText.getRegularStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: Dimensions.font16,
                          color: AppColors.mygreycolor,
                        ),
                      ),
                    ),
                    SizedBox(height: Dimensions.height30),
                    TextField(
                      cursorColor: AppColors.textcolor,
                      cursorWidth: 1.0,
                      decoration: InputDecoration(
                        hintText: 'RFID number',
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        hintStyle: StyleText.getRegularStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: Dimensions.font16,
                          color: AppColors.mygreycolor,
                        ),
                      ),
                    ),
                    SizedBox(height: Dimensions.height20),
                  ],
                ), // Adjust the padding if needed
              ),
            ),
            SizedBox(height: Dimensions.height20),
          ],
        ),
      ),
    );
  }
}
