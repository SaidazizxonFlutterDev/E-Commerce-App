import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar {
  static PreferredSizeWidget appBar({required String actionText}) {
    return AppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 10.w),
        child: Text(
          "Mega Mall",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: ColorConst.primaryBlue,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold),
        ),
      ),
      actions: [
        Padding(
          padding:  EdgeInsets.only(right: 15.0.w),
          child: Text(
            actionText,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: ColorConst.primaryBlack,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
