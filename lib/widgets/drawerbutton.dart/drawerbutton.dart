import 'package:flutter/material.dart';

class CardMenuIcon extends StatelessWidget {
  final VoidCallback onTap;
  final IconData customIcon;

  const CardMenuIcon(
      {super.key, required this.onTap, this.customIcon = Icons.menu});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
      ),
      child: Icon(size: height * 0.035, customIcon, color: Colors.black),
    );
  }
}
