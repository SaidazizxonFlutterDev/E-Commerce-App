import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:ecommerce_app/presentation/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar {
  static PreferredSizeWidget appBar(){
    return AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Text(
            "Mega Mall",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: ColorConst.primayBlue,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          SvgPicture.asset(IconAsset.bell),
          SizedBox(width: 18.w),
          SvgPicture.asset(IconAsset.shopping_cart),
          SizedBox(width: 18.w),
        ],
      );
  }
}