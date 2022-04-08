import 'package:clockapplication/constant/constanst.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String title;
  Color? backgroundColor;
  Function onTap;
  Color? titleColor;

  CustomButton({
    required this.title,
    this.backgroundColor,
    required this.onTap,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: backgroundColor ?? Constant.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          
        ),
        elevation: 20,
        shadowColor: backgroundColor ?? Constant.mainColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Text(
          title,
          style: TextStyle(fontSize: 25, color: titleColor ?? Colors.white),
        ),
      ),
      onPressed: () => onTap(),
    );
  }
}
