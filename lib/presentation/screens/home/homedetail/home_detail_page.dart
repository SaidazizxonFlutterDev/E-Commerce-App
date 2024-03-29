import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeDetailPage extends StatefulWidget {
  const HomeDetailPage({super.key});

  @override
  State<HomeDetailPage> createState() => _HomeDetailPageState();
}

class _HomeDetailPageState extends State<HomeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 15.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300.h,
                  width: 340.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: ColorConst.primaryBlue,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        height: 300.h,
                        width: 340.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.network(
                            'https://source.unsplash.com/random',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10.h,
                        left: 10.w,
                        child: InkWell(
                          onTap: () => Navigator.of(context).pop(),
                          child: Container(
                            height: 20.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              color: ColorConst.secHalfGrey,
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            child: const Icon(
                              Icons.arrow_back,
                              color: ColorConst.primaryWhite,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "Sitron Sofa",
                  style: TextStyle(
                      color: ColorConst.primaryBlack,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold),
                ),
                // SizedBox(height: 5.h),
                Text(
                  "\$510",
                  style: TextStyle(
                      color: ColorConst.primaryBlue,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Quantity",
                      style: TextStyle(
                          fontSize: 20.sp, color: ColorConst.primaryBlack),
                    ),
                    Row(
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.all(0.h),
                            side:
                                const BorderSide(color: ColorConst.primaryBlue),
                          ),
                          onPressed: () {},
                          child: const Icon(Icons.remove),
                        ),
                        SizedBox(width: 10.w),
                        Text("1",
                            style: TextStyle(
                                color: ColorConst.primaryBlue,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold)),
                        SizedBox(width: 10.w),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.all(0.h),
                            side:
                                const BorderSide(color: ColorConst.primaryBlue),
                          ),
                          onPressed: () {},
                          child: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Text(
                  "Step out in style with this sleek navy blue baseball cap. Crafted from durable material, it features a smooth, structured design and an adjustable strap for the perfect fit. Protect your eyes from the sun and complement your casual looks with this versatile and timeless accessory.",
                  style:
                      TextStyle(fontSize: 16.sp, color: ColorConst.secDarkGrey),
                ),
                Divider(thickness: 2.h, height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.h),
                      height: 40.h,
                      width: 200.w,
                      decoration: BoxDecoration(
                          color: ColorConst.primaryBlue,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                            letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.sp,
                              color: ColorConst.primaryWhite),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        size: 35.h,
                        color: ColorConst.secGreen,
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.favorite,
                        size: 35.h,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
