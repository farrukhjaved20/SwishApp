import 'package:flutter/material.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';
import 'package:swish_app/views/Drawer/pages/zone/widgets/circlewidget.dart';
import 'package:swish_app/widgets/drawerbutton.dart/drawerbutton.dart';

class ZoneDetails extends StatelessWidget {
  const ZoneDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(
                left: Dimensions.width3, top: Dimensions.height10),
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
              'Zone 1 map',
              style: StyleText.getBoldStyle(
                color: AppColors.textcolor,
                fontWeight: FontWeight.w700,
                fontSize: Dimensions.font26,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: Dimensions.width20, top: Dimensions.height10),
            child: Text(
              'Check the available chargers in this area',
              style: StyleText.getRegularStyle(
                color: AppColors.textcolor,
                fontSize: Dimensions.font16,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width20, top: Dimensions.height20),
                child: Text(
                  'Max power',
                  style: StyleText.getRegularStyle(
                    color: AppColors.textcolor,
                    fontWeight: FontWeight.w600,
                    fontSize: Dimensions.font16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width3, top: Dimensions.height20),
                child: Text(
                  '3.5 KWH',
                  style: StyleText.getBoldStyle(
                    color: AppColors.textcolor,
                    fontSize: Dimensions.font18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.height10),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: Dimensions.width20),
                child: Text(
                  'Availability:',
                  style: StyleText.getBoldStyle(
                    color: AppColors.textcolor,
                    fontSize: Dimensions.font16,
                  ),
                ),
              ),
              SizedBox(width: Dimensions.width20),
              CircleWithNumber(
                number: 1,
                customTextColor: AppColors.greencolor,
                circlecolor: AppColors.greencolor,
              ),
              SizedBox(width: Dimensions.width20),
              CircleWithNumber(
                number: 8,
                customTextColor: AppColors.orangecolor,
                circlecolor: AppColors.orangecolor,
              ),
              SizedBox(width: Dimensions.width20),
              CircleWithNumber(
                number: 1,
                customTextColor: AppColors.redcolor,
                circlecolor: AppColors.redcolor,
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width20, top: Dimensions.height20),
                child: Text(
                  'Max power',
                  style: StyleText.getRegularStyle(
                    color: AppColors.textcolor,
                    fontSize: Dimensions.font16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width3, top: Dimensions.height20),
                child: Text(
                  '2.3 KWH',
                  style: StyleText.getBoldStyle(
                    color: AppColors.textcolor,
                    fontSize: Dimensions.font18,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.height10),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: Dimensions.paddingHor20),
                child: Text(
                  'Availability:',
                  style: StyleText.getBoldStyle(
                    color: AppColors.textcolor,
                    fontSize: Dimensions.font16,
                  ),
                ),
              ),
              SizedBox(width: Dimensions.width20),
              CircleWithNumber(
                number: 4,
                customTextColor: AppColors.greencolor,
                circlecolor: AppColors.greencolor,
              ),
              SizedBox(width: Dimensions.width20),
              CircleWithNumber(
                number: 6,
                customTextColor: AppColors.orangecolor,
                circlecolor: AppColors.orangecolor,
              ),
              SizedBox(width: Dimensions.width20),
              CircleWithNumber(
                number: 2,
                customTextColor: AppColors.redcolor,
                circlecolor: AppColors.redcolor,
              ),
            ],
          ),
          SizedBox(height: Dimensions.height30),
          Image.asset(
            'assets/images/map.PNG',
            fit: BoxFit.fill,

            // width: width * 0.8,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: Dimensions.width20, top: Dimensions.height30),
            child: Row(
              children: [
                CircleWithNumber(
                  circlecolor: AppColors.greencolor,
                  customText: 'Available',
                  customTextColor: AppColors.textcolor,
                ),
                SizedBox(width: Dimensions.width20),
                CircleWithNumber(
                  customText: 'Charging',
                  circlecolor: AppColors.orangecolor,
                ),
                SizedBox(width: Dimensions.width10),
                CircleWithNumber(
                  customText: 'Out of service',
                  circlecolor: AppColors.orangecolor,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
