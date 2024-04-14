import 'package:flutter/material.dart';
import 'package:swish_app/constants/colors.dart';
import 'package:swish_app/constants/fonts.dart';

class Custombuttondesign extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double height;
  final double width;
  final double fontSize;
  final Color? buttonColor;

  const Custombuttondesign({
    super.key,
    required this.title,
    required this.onTap,
    this.height = 50.0,
    this.width = 250.0,
    this.fontSize = 14.0,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          ContinuousRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
        overlayColor: const MaterialStatePropertyAll(Colors.white60),
        backgroundColor: MaterialStatePropertyAll(
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
            style: StyleText.getRegularStyle(
              fontSize: fontSize,
              color: Colors.white,
             
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
