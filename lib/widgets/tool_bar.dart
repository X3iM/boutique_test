import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ToolBar extends StatelessWidget {
  final Function leadingOnTap;
  final IconData leadingIconData;
  final Function actionOnTap;
  final IconData actionIconData;
  final String title;

  ToolBar({this.title, this.leadingOnTap, this.leadingIconData, this.actionOnTap, this.actionIconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: Icon(leadingIconData, size: 5.w,), onPressed: leadingOnTap),
          Text(title, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),),
          IconButton(icon: Icon(actionIconData, size: 5.w,), onPressed: actionOnTap),
        ],
      ),
    );
  }
}
