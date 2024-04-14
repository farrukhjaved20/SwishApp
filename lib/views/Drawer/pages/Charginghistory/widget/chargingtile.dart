import 'package:flutter/material.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';

class Chargingtile extends StatelessWidget {
  const Chargingtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimensions.radius12)),
      height: Dimensions.height150,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: Dimensions.height10,
                left: Dimensions.width20,
                right: Dimensions.width20),
            child: Text(
              'dd month yy',
              style: StyleText.getRegularStyle(
                  fontSize: Dimensions.font16,
                  color: AppColors.mygreycolor,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: Dimensions.height10,
                left: Dimensions.width20,
                right: Dimensions.width20),
            child: Text(
              'STATION NAME - POC NAME',
              style: StyleText.getBoldStyle(
                  fontSize: Dimensions.font18, color: AppColors.textcolor),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: Dimensions.height10,
                left: Dimensions.width20,
                right: Dimensions.width20),
            child: Text(
              'Station Address',
              style: StyleText.getBoldStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: Dimensions.font16,
                  color: AppColors.textcolor),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: Dimensions.height10,
                  left: Dimensions.width20,
                ),
                child: Text(
                  'Charge time',
                  style: StyleText.getBoldStyle(
                      fontSize: Dimensions.font16,
                      color: AppColors.mygreycolor,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: Dimensions.width20),
                child: Text(
                  '0,00 KWh   € 0,00',
                  style: StyleText.getBoldStyle(
                    fontSize: Dimensions.font16,
                    color: AppColors.textcolor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
