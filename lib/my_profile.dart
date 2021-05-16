import 'package:boutique_test/widgets/button.dart';
import 'package:boutique_test/widgets/circular_image.dart';
import 'package:boutique_test/widgets/list_item.dart';
import 'package:boutique_test/widgets/segment_control.dart';
import 'package:boutique_test/widgets/tool_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';

class MyProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              ToolBar(
                title: 'My profile',
                leadingIconData: MdiIcons.home,
                leadingOnTap: () {},
                actionIconData: MdiIcons.accountEdit,
                actionOnTap: () {},
              ),
              Padding(
                padding: EdgeInsets.all(2.h),
                child: CircularImage(image: 'assets/images/profile_image.svg',),
              ),
              Text('John Doe', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),),
              SizedBox(height: 0.5.h,),
              Text('98336704573', style: TextStyle(fontSize: 11.sp),),
              SizedBox(height: 2.h,),
              FilledButton(color: Color(0xFF1691CC), text: 'Wallet', onTap: () {},),
              SizedBox(height: 3.h,),
              SegmentControl(),
              SizedBox(height: 3.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    onTap: () {},
                    borderColor: Color(0xFF868686),
                    iconData: MdiIcons.plus,
                    textColor: Color(0xFF2C2C2C),
                    backgroundColor: Colors.white,
                    shadowColor: Colors.grey.withOpacity(0.1),
                    padding: 3.w,
                    iconSize: 7.w,
                    borderRadius: 3.w,
                  ),
                ],
              ),
              SizedBox(height: 3.h,),
              Container(
                height: 41.h,
                width: 100.w,
                child: ListView.builder(
                  shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                  return ListItem(image: 'assets/images/item_image.png', title: 'Mifgash Moshe', address: 'Hertzel 5, Tel Aviv',);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
