import 'package:flutter/material.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';

import 'package:swish_app/widgets/Custom_button_widgets/custom_button.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';
import 'package:swish_app/widgets/whitecontainer/whitecontainer.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

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
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20, top: Dimensions.height10),
              child: Text(
                'Change your password',
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
                borderRadius:
                    height * 0.01, // Adjust the border radius if needed

                child: Column(
                  children: [
                    TextField(
                      cursorColor: AppColors.textcolor,
                      cursorWidth: 1.0,
                      decoration: InputDecoration(
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        hintText: 'Your current password',
                        hintStyle: StyleText.getRegularStyle(
                          fontWeight: FontWeight.w500,
                         
                          fontSize: height * 0.018,
                          color: AppColors.mygreycolor,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    TextField(
                      cursorColor: AppColors.textcolor,
                      cursorWidth: 1.0,
                      decoration: InputDecoration(
                        hintText: 'New password',
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        hintStyle: StyleText.getRegularStyle(
                          fontWeight: FontWeight.w500,
                         
                          fontSize: height * 0.018,
                          color: AppColors.mygreycolor,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    TextField(
                      cursorColor: AppColors.textcolor,
                      cursorWidth: 1.0,
                      decoration: InputDecoration(
                        hintText: 'Repeat new password',
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        hintStyle: StyleText.getRegularStyle(
                          fontWeight: FontWeight.w500,
                         
                          fontSize: height * 0.018,
                          color: AppColors.mygreycolor,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                  ],
                ), // Adjust the padding if needed
              ),
            ),
            SizedBox(height: height * 0.03),
            Center(
              child: Custombuttondesign(
                fontSize: height * 0.02,
                title: 'Save',
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
