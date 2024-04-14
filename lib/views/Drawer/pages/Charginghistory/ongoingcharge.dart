import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/views/Drawer/drawer.dart';
import 'package:swish_app/views/Drawer/pages/Charginghistory/finishcharge.dart';
import 'package:swish_app/widgets/Custom_button_widgets/custom_button.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';

class OngoingCharging extends StatelessWidget {
  const OngoingCharging({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      drawer: const CustomDrawer(),
      backgroundColor: AppColors.backgroundcolor,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.02),
            child: Builder(
              builder: (context) => CardMenuIcon(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
          ),
          Center(
              child: Image.asset(
            'assets/images/APPs_Bolt_Icon_3.png',
            height: height * 0.06,
          )),
          SizedBox(height: height * 0.01),
          Center(
            child: Text(
              textAlign: TextAlign.center,
              'Hi Johanna\nyour ongoing charge',
              style: StyleText.getBoldStyle(
                color: AppColors.textcolor,
                fontSize: height * 0.025,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: height * 0.02,
              left: width * 0.05,
              right: width * 0.05,
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            height: Get.height * 0.37,
            width: width * 0.9,
            child: ListView(
              // mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.02),
                Center(
                  child: Text(
                    '00:00:00',
                    style: StyleText.getRegularStyle(
                        fontWeight: FontWeight.w600, fontSize: height * 0.023),
                  ),
                ),
                SizedBox(height: Dimensions.height20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.01),
                      child: Image.asset(
                        'assets/images/bolt2.png',
                        height: height * 0.025,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: Dimensions.width30),
                      child: Icon(
                        Icons.euro,
                        color: AppColors.mygreycolor,
                        size: height * 0.025,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '0,0 KWh',
                          style: StyleText.getRegularStyle(
                            fontSize: height * 0.02,
                            color: AppColors.buttonColor,
                          ),
                        ),
                        SizedBox(height: Dimensions.height2),
                        Text(
                          'Charged',
                          style: StyleText.getRegularStyle(
                              color: AppColors.mygreycolor,
                              fontSize: height * 0.018,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '€ 0,00',
                          style: StyleText.getRegularStyle(
                            fontSize: height * 0.02,
                            color: AppColors.buttonColor,
                          ),
                        ),
                        SizedBox(height: Dimensions.height2),
                        Text(
                          ' Spent',
                          style: StyleText.getRegularStyle(
                              color: AppColors.mygreycolor,
                              fontSize: height * 0.018,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.02,
                    left: width * 0.03,
                    right: width * 0.03,
                  ),
                  child: Divider(
                    color: AppColors.mygreycolor,
                    thickness: 0.5,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: height * 0.01, left: width * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Started at: 00:00:00',
                        style: StyleText.getRegularStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.018,
                        ),
                      ),
                      SizedBox(height: Dimensions.height10),
                      Text(
                        'STATION NAME',
                        style: StyleText.getRegularStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: height * 0.018,
                        ),
                      ),
                      SizedBox(height: Dimensions.height10),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/ring.png',
                            height: Dimensions.height15,
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: ' 150',
                              style: StyleText.getRegularStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: height * 0.018,
                              ),
                            ),
                            TextSpan(
                              text: ' KWh',
                              style: StyleText.getRegularStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: height * 0.018,
                              ),
                            )
                          ])),
                        ],
                      ),
                      SizedBox(height: Dimensions.height10),
                      Text(
                        'EVSE-ID',
                        style: StyleText.getRegularStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: height * 0.018,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: height * 0.02),
          Center(
            child: Custombuttondesign(
              fontSize: height * 0.02,
              title: 'Finish charge',
              onTap: () {
                Get.to(() => const FinishCharge());
              },
            ),
          )
        ],
      ),
    );
  }
}
