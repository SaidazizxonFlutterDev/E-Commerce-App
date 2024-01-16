import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:ecommerce_app/presentation/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
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
                    const Icon(Icons.search, color: ColorConst.primaryBlack),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
