import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class BigButtonWidget extends StatelessWidget {
  String text;
   BigButtonWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      height: 40.h,
      width: 200.w,
      decoration: BoxDecoration(
          color: ColorConst.primaryBlue,
          borderRadius: BorderRadius.circular(8.r)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
              color: ColorConst.primaryWhite),
        ),
      ),
    );
  }
}
