import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';

import 'button.dart';

class ListItem extends StatelessWidget {
  final String image;
  final String title;
  final String address;

  ListItem({this.image, this.title, this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.w),
        color: Colors.grey.withOpacity(0.2)
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                    width: 100.w,
                    height: 22.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(3.w), topRight: Radius.circular(3.w),),
                    ),
                    child: Image.asset(image, fit: BoxFit.fill,)
                ),
              ),
              Positioned(
                  top: 2.h,
                  left: 3.w,
                  child: Row(
                    children: [
                      CustomIconButton(
                        padding: 2.w,
                        backgroundColor: Color(0xFF0F0F0F),
                        textColor: Colors.white,
                        shadowColor: Colors.black.withOpacity(0.5),
                        onTap: () {},
                        iconData: MdiIcons.television,
                        text: '5Nis/6sec',
                        borderColor: Color(0xFF0F0F0F),
                        iconSize: 7.w,
                        borderRadius: 2.w,
                      ),
                    ],
                  ),
              ),
              Positioned(
                top: 2.h,
                right: 3.w,
                child: Row(
                  children: [
                    CustomIconButton(
                      padding: 2.w,
                      backgroundColor: Color(0xFF0F0F0F),
                      textColor: Colors.white,
                      shadowColor: Colors.black.withOpacity(0.5),
                      onTap: () {},
                      iconData: Icons.share,
                      borderColor: Color(0xFF0F0F0F),
                      iconSize: 7.w,
                      borderRadius: 3.w,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(7, (index) => _buildImageIndicators(index)),
          ),
          SizedBox(height: 1.h,),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(2.w),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(title, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),),
                    SizedBox(width: 1.w,),
                    Text('Kiosk', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10.sp),),
                    SizedBox(width: 1.w,),
                    CustomIconButton(
                      padding: 1.w,
                      backgroundColor: Colors.white,
                      textColor: Colors.grey.withOpacity(0.6),
                      shadowColor: Colors.black.withOpacity(0.1),
                      onTap: () {},
                      iconData: Icons.edit,
                      borderColor: Colors.white,
                      iconSize: 3.w,
                      borderRadius: 2.w,
                    ),
                    SizedBox(width: 28.w,),
                    Icon(Icons.keyboard_arrow_down, size: 7.w,),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Row(
                    children: [
                      Icon(Icons.location_on, size: 7.w,),
                      SizedBox(width: 2.w,),
                      Text(address, style: TextStyle(fontSize: 9.sp),),
                    ],
                  ),
              ),
              SizedBox(height: 1.h,),
              Container(
                height: 6.h,
                decoration: BoxDecoration(
                  color: Color(0xFF1691CC),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(3.w), bottomRight: Radius.circular(3.w)),
                ),
                child: Center(child: Text('Manage', style: TextStyle(fontSize: 12.sp, color: Colors.white, fontWeight: FontWeight.w600),),),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildImageIndicators(int i) {
    return Container(
      margin: EdgeInsets.all(1.w),
      width: 2.w,
      height: 2.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.w),
        color: i == 0 ?  Colors.blue : Colors.grey.withOpacity(0.6),
      ),
    );
  }

}
