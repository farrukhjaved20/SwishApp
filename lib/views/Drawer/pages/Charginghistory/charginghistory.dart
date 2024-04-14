import 'package:flutter/material.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/views/Drawer/drawer.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';
import 'package:swish_app/views/Drawer/pages/Charginghistory/widget/chargingtile.dart';

class Charginghistory extends StatelessWidget {
  const Charginghistory({super.key});

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
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ))),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width20, top: Dimensions.height10),
              child: Text(
                'Charging history',
                style: StyleText.getBoldStyle(
                  fontSize: Dimensions.font22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: Dimensions.height20),
            Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius12)),
              height: Dimensions.height190,
              width: Dimensions.width400,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        iconSize: Dimensions.height20,
                        color: AppColors.buttonColor,
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                        onPressed: () {},
                      ),
                      Container(
                        margin: EdgeInsets.only(left: Dimensions.width30),
                        child: Text(
                          'January 2024',
                          style: StyleText.getRegularStyle(
                            fontSize: Dimensions.font18,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: Dimensions.width30),
                        child: IconButton(
                          iconSize: Dimensions.height20,
                          color: AppColors.buttonColor,
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Dimensions.height20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: Dimensions.width10),
                        child: Image.asset(
                          'assets/images/bolt2.png',
                          height: Dimensions.size20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: Dimensions.width30),
                        child: Icon(
                          Icons.euro,
                          color: AppColors.mygreycolor,
                          size: Dimensions.size20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Dimensions.height10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            '0,0 KWh',
                            style: StyleText.getRegularStyle(
                              fontSize: Dimensions.font18,
                            ),
                          ),
                          SizedBox(height: Dimensions.height2),
                          Text(
                            'Charged',
                            style: StyleText.getRegularStyle(
                                fontSize: Dimensions.font15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '€ 0,00',
                            style: StyleText.getRegularStyle(
                              fontSize: Dimensions.font18,
                            ),
                          ),
                          SizedBox(height: Dimensions.height2),
                          Text(
                            'Spent',
                            style: StyleText.getRegularStyle(
                                fontSize: Dimensions.font15,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: Dimensions.height20),
            const Chargingtile(),
            SizedBox(height: Dimensions.height20),
            const Chargingtile(),
            SizedBox(height: Dimensions.height20),
            const Chargingtile(),
            SizedBox(height: Dimensions.height30),
          ],
        ),
      ),
    );
  }
}
