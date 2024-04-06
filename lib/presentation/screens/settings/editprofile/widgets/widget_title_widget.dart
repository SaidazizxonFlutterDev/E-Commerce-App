import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class WidgetTitleWidget extends StatelessWidget {
  String text;
  WidgetTitleWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: Text(text,
          style: TextStyle(
            fontSize: 18.sp,
          ),
        ),
      ),
    );
  }
}
