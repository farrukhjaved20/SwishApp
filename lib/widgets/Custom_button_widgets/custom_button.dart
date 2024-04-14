import 'package:flutter/material.dart';
import 'package:swish_app/constants/colors.dart';

class Custombuttondesign extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double height;
  final double width;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? buttonColor;

  const Custombuttondesign({
    super.key,
    required this.title,
    required this.onTap,
    this.height = 50.0,
    this.width = 250.0,
    this.fontSize = 14.0,
    this.fontWeight = FontWeight.w400,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        splashFactory: InkRipple.splashFactory,
        overlayColor: MaterialStateProperty.all(Colors.white60),
        backgroundColor: MaterialStateProperty.all(
          buttonColor ?? AppColors.buttonColor,
        ),
      ),
      onPressed: onTap,
      child: SizedBox(
        height: height,
        width: width,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: fontSize,
              color: Colors.white,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}
