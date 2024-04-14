import 'package:flutter/material.dart';
import 'package:swish_app/constants/dimensions.dart';
import 'package:swish_app/constants/fonts.dart';

class CircleWithNumber extends StatelessWidget {
  final Color? circlecolor;
  final String? customText;
  final Color? customTextColor;
  final int? number;

  const CircleWithNumber({
    super.key,
    this.circlecolor,
    this.customText,
    this.customTextColor,
    this.number,
  });

  @override
  Widget build(BuildContext context) {
    final displayText =
        customText ?? (number != null ? number!.toString() : '');

    final textColor = customTextColor ?? Colors.black;

    return Wrap(
      children: [
        Container(
          width: Dimensions.width30,
          height: Dimensions.height20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: circlecolor,
          ),
        ),
        Text(
          displayText,
          style: StyleText.getBoldStyle(
            color: textColor,
            fontSize: Dimensions.font15,
          ),
        ),
      ],
    );
  }
}
