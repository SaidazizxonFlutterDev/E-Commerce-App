import 'package:card_swiper/card_swiper.dart';
import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomNavIndex = 0;
  var myInformationHere = {
    "image": "https://source.unsplash.com/random", 
    "title":"Here you get Title", 
    "subtitle":"Here you get long subtitles with. It might be description or something.",
    };
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w),
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
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
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  height: 150.h,
                  child: Swiper(
                    itemHeight: 150.h,
                    itemWidth: double.infinity,
                    itemCount: 4,
                    viewportFraction: 1.0,
                    scale: 0.9,
                    itemBuilder: (ctx, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.network(
                          "https://source.unsplash.com/random/$index",
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Categories",
                        style: TextStyle(
                            fontSize: 16.sp, color: ColorConst.primaryBlack)),
                    Text("See All",
                        style: TextStyle(
                            fontSize: 12.sp, color: ColorConst.primaryBlue))
                  ],
                ),
                SizedBox(
                    height: 80.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (ctx, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.h, vertical: 15.w),
                            child: Container(
                              height: 48.h,
                              width: 120.w,
                              decoration: BoxDecoration(
                                color: ColorConst.primaryBlue,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Row(
                                  children: [
                                    SizedBox(width: 5.w),
                                    SizedBox(
                                      width: 70,
                                      child: Text(
                                        "Furniture furniture",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        softWrap: false,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: ColorConst.primaryWhite),
                                      ),
                                    ),
                                    SizedBox(width: 2.w),
                                    CircleAvatar(
                                      backgroundColor:
                                          ColorConst.primaryWhite,
                                      radius: 20.r,
                                      backgroundImage: NetworkImage(
                                          'https://source.unsplash.com/random/$index'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        })),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Text("Categories",
                        style: TextStyle(
                            fontSize: 16.sp, color: ColorConst.primaryBlack)),
                  ],
                ),
                SizedBox(height: 15.h),
                SizedBox(
                  height: 170.h,
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'homedetail');
                          },
                          child: Card(
                            color: ColorConst.primaryBlue,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: Image.network(
                                'https://source.unsplash.com/random/$index',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            );
          }),
    );
  }
}
