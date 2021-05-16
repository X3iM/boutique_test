import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SegmentControl extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF1691CC),
                      width: 0.8.w
                    )
                  )
                ),
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: Center(child: Text('My screens', style: TextStyle(color: Color(0xFF1691CC), fontWeight: FontWeight.w500),)),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.grey,
                            width: 0.2.w
                        )
                    )
                ),
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: Center(child: Text('My Loops', style: TextStyle(color: Colors.grey),)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
