import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double? fontsize;
  final Color? color;
  const CustomButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.fontsize,
      this.color});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.white,
          blurRadius: 5,
          spreadRadius: 0,
        )
      ]),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          minimumSize: Size(width, 50),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontsize,
          ),
        ),
      ),
    );
  }
}
