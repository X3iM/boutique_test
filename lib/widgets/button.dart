import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FilledButton extends StatelessWidget {
  final Color color;
  final String text;
  final Function onTap;

  FilledButton({this.color, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: 40.w,
        height: 6.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(2.w)
        ),
        child: Center(
            child: Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12.sp),)
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final Color borderColor;
  final Color backgroundColor;
  final Color textColor;
  final Color shadowColor;
  final IconData iconData;
  final Function onTap;
  final String text;
  final double padding;
  final double iconSize;
  final double borderRadius;

  CustomIconButton({
    this.borderColor,
    this.iconData,
    this.onTap,
    this.text,
    this.backgroundColor,
    this.textColor,
    this.shadowColor,
    this.padding,
    this.iconSize,
    this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.all(padding),
        // width: 12.w,
        // height: 12.w,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: borderColor),
            boxShadow: [
              BoxShadow(color: shadowColor, offset: Offset(0, 2), blurRadius: 3, spreadRadius: 3),
            ],
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              text != null ? Text(text, style: TextStyle(color: textColor, fontSize: 9.sp, fontWeight: FontWeight.w600),) : Container(),
              text != null ? SizedBox(width: 2.w,) : Container(),
              Icon(iconData, size: iconSize, color: textColor,),
            ],
          ),
        ),
      ),
    );
  }
}
