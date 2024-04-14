import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';

import 'package:swish_app/views/Drawer/drawer.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';
import 'package:swish_app/views/Drawer/pages/RFIDCards/cardtwo.dart';
import 'package:swish_app/views/Drawer/pages/RFIDCards/change_card_label.dart';

class Cardone extends StatelessWidget {
  const Cardone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      backgroundColor: AppColors.backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        right: Dimensions.width30, top: Dimensions.height20),
                    child: InkWell(
                        onTap: () {
                          Get.to(() => const Cardtwo());
                        },
                        child: Image.asset(
                          'assets/images/addcard.png',
                          height: Dimensions.height40,
                        ))),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              child: Text(
                'RFID cards',
                style: StyleText.getRegularStyle(
                  color: AppColors.textcolor,
                  fontSize: Dimensions.font24,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height10),
              child: ListTile(
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.radius12)),
                tileColor: Colors.white,
                title: Text(
                  'Charge Card label',
                  style: StyleText.getBoldStyle(
                    color: AppColors.textcolor,
                    fontSize: Dimensions.font18,
                  ),
                ),
                subtitle: Text(
                  'RFID number',
                  style: StyleText.getBoldStyle(
                    color: AppColors.textcolor,
                    fontSize: Dimensions.font18,
                  ),
                ),
                leading: Image.asset(
                  'assets/images/appcredit.png',
                  height: Dimensions.height40,
                ),
                trailing: Icon(
                  size: Dimensions.height20,
                  color: AppColors.buttonColor,
                  Icons.arrow_forward_ios_rounded,
                ),
                onTap: () {
                  Get.to(() => const ChangeCardLabel());
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height15),
              child: ListTile(
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.height20)),
                tileColor: Colors.white,
                title: Text(
                  'Charge Card label',
                  style: StyleText.getBoldStyle(
                    color: AppColors.textcolor,
                    fontSize: Dimensions.font18,
                  ),
                ),
                subtitle: Text(
                  'RFID number',
                  style: StyleText.getBoldStyle(
                    color: AppColors.textcolor,
                    fontSize: Dimensions.font18,
                  ),
                ),
                leading: Image.asset(
                  'assets/images/appcredit.png',
                  height: Dimensions.height40,
                ),
                trailing: Icon(
                  size: Dimensions.height20,
                  color: AppColors.buttonColor,
                  Icons.arrow_forward_ios_rounded,
                ),
                onTap: () {
                  Get.to(() => const ChangeCardLabel());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
