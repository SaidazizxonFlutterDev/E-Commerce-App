import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class SettingsButton extends StatelessWidget {
  IconData icon;
  String text;
  SettingsButton({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 3.h),
      height: 50.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: ColorConst.secOffGrey,
          borderRadius: BorderRadius.circular(8.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Row(
              children: [
                Icon(icon),
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Text(text, style: TextStyle(fontSize: 18.sp)),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
          )
        ],
      ),
    );
    
  }
}
