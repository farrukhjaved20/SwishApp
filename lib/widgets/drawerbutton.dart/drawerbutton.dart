import 'package:flutter/material.dart';
import 'package:swish_app/constants/dimensions.dart';

class CardMenuIcon extends StatelessWidget {
  final VoidCallback onTap;
  final IconData customIcon;

  const CardMenuIcon(
      {super.key, required this.onTap, this.customIcon = Icons.menu});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
      ),
      child: Icon(size: Dimensions.height31, customIcon, color: Colors.black),
    );
  }
}
