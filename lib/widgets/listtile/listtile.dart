import 'package:flutter/material.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/dimensions.dart';

import '../../constants/fonts.dart';

class CustomListTile extends StatelessWidget {
  final Widget? leading; // Make leading a Widget
  final String title;
  final String? subtitle; // Make subtitle nullable
  final IconData trailingIcon;
  final Color iconColor;
  final double iconSize;
  final void Function()? ontap;
  final Color backgroundColor;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;

  const CustomListTile({
    super.key,
    this.leading, 
    required this.title,
    this.subtitle, 
    required this.trailingIcon,
    this.iconColor = Colors.black,
    this.iconSize = 24.0,
    required this.ontap,
    this.backgroundColor = Colors.transparent,
    this.titleTextStyle,
    this.subtitleTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(23)),
      leading: leading,
      title: Text(
        title,
        style: titleTextStyle ??
            StyleText.getBoldStyle(
              color: AppColors.textcolor,
              fontSize: Dimensions.font18,
            ),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: subtitleTextStyle ??
                  StyleText.getRegularStyle(
                    fontSize: Dimensions.font13,
                    color: AppColors.customgrey2,
                  ),
            )
          : null,
      trailing: Icon(
        trailingIcon,
        color: iconColor,
        size: iconSize,
      ),
      onTap: ontap,
      tileColor: backgroundColor,
    );
  }
}
