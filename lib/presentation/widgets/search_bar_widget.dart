import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                  height: 50.h,
                  width: 325.w,
                  decoration: BoxDecoration(
                      color: ColorConst.secOffGrey,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Search Product Name',
                        style: TextStyle(
                          color: ColorConst.secHalfGrey,
                          fontSize: 14.sp,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          height: 0.09.h,
                        ),
                      ),
                      const Icon(Icons.search,
                          color: ColorConst.primaryBlack),
                    ],
                  ),
                )
                ;
  }
}