import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';

import 'package:swish_app/views/dashboard/dashboard.dart';
import 'package:swish_app/widgets/Custom_button_widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: Dimensions.height80),
            Center(
                child: Image.asset(
              'assets/images/APPs_Bolt_Icon_3.png',
              height: Dimensions.height50,
            )),
            SizedBox(height: Dimensions.height10),
            Text(
              'Need energy',
              style: StyleText.getBoldStyle(
                color: AppColors.textcolor,
                fontSize: Dimensions.font26,
              ),
            ),
            Text(
              'Johanna?',
              style: StyleText.getBoldStyle(
                fontSize: Dimensions.font26,
                color: AppColors.textcolor,
              ),
            ),
            SizedBox(height: Dimensions.height20),
            Custombuttondesign(
              fontSize: Dimensions.font18,
              title: 'Search charging point',
              onTap: () {
                Get.to(() => const DashboardScreen());
              },
            )
          ],
        ),
      ),
    );
  }
}
