import 'package:flutter/material.dart';
import 'package:swish_app/constants/dimensions.dart';

class RoundedWhiteContainer extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final EdgeInsetsGeometry padding;

  const RoundedWhiteContainer({
    super.key,
    required this.child,
    this.borderRadius = 12.0,
    this.padding = const EdgeInsets.all(16.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}
