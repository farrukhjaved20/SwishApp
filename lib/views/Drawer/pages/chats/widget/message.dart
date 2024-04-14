import 'package:flutter/material.dart';

import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';

class Messagescreen extends StatelessWidget {
  const Messagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: Dimensions.height20,
        ),
        Container(
            height: Dimensions.height50,
            width: Dimensions.width400,
            margin: EdgeInsets.only(
              left: Dimensions.width40,
              right: Dimensions.width20,
              top: Dimensions.height10,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.radius12)),
            child: Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width10, top: Dimensions.height15),
              child: Text(
                'Message sent from the other user',
                style: StyleText.getRegularStyle(
                  fontSize: Dimensions.font14,
                ),
              ),
            )),
        Container(
          margin: EdgeInsets.only(
              left: Dimensions.width20, top: Dimensions.height2),
          width: Dimensions.width30,
          height: Dimensions.height30,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              'AB',
              style: StyleText.getRegularStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.textcolor,
              ),
            ),
          ),
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Container(
            height: Dimensions.height50,
            width: Dimensions.width400,
            margin: EdgeInsets.only(
              left: Dimensions.width10,
              right: Dimensions.width40,
              top: Dimensions.height10,
            ),
            decoration: BoxDecoration(
                color: AppColors.lightgreencolor,
                borderRadius: BorderRadius.circular(Dimensions.radius12)),
            child: Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width10, top: Dimensions.height15),
              child: Text(
                'Message sent from the user is using the APP',
                style: StyleText.getRegularStyle(
                  fontSize: Dimensions.font14,
                ),
              ),
            )),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            margin: EdgeInsets.only(
                right: Dimensions.width20, top: Dimensions.height2),
            width: Dimensions.width30,
            height: Dimensions.height30,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Center(
                child: CircleAvatar(
              foregroundImage: AssetImage('assets/images/johanna.jpg'),
            )),
          ),
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Container(
          height: Dimensions.height50,
          width: Dimensions.width400,
          margin: EdgeInsets.only(
            left: Dimensions.width40,
            right: Dimensions.width20,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(Dimensions.radius12)),
          child: Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.width10, top: Dimensions.height15),
              child: Text(
                'Message sent from the other user',
                style: StyleText.getRegularStyle(
                  fontSize: Dimensions.font14,
                ),
              )),
        ),
        Container(
          margin: EdgeInsets.only(
              left: Dimensions.width20, top: Dimensions.height2),
          width: Dimensions.width30,
          height: Dimensions.height30,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              'AB',
              style: StyleText.getRegularStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.textcolor,
              ),
            ),
          ),
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Container(
            height: Dimensions.height50,
            width: Dimensions.width400,
            margin: EdgeInsets.only(
              left: Dimensions.width10,
              right: Dimensions.width40,
            ),
            decoration: BoxDecoration(
                color: AppColors.lightgreencolor,
                borderRadius: BorderRadius.circular(Dimensions.radius12)),
            child: Padding(
                padding: EdgeInsets.only(
                    left: Dimensions.width10, top: Dimensions.height15),
                child: Text(
                  'Message sent from the user is using the APP',
                  style: StyleText.getRegularStyle(
                    fontSize: Dimensions.font14,
                  ),
                ))),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            margin: EdgeInsets.only(
                right: Dimensions.width20, top: Dimensions.height2),
            width: Dimensions.width30,
            height: Dimensions.height30,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Center(
                child: CircleAvatar(
              foregroundImage: AssetImage('assets/images/johanna.jpg'),
            )),
          ),
        ),
      ],
    );
  }
}
