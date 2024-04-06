import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:ecommerce_app/presentation/widgets/big_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 15.h),
      child: Column(
        children: [
          SizedBox(
            height: 470.h,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 5.h),
                    child: SizedBox(
                      height: 60.h,
                      child: Row(children: [
                        SizedBox(
                          height: 60.h,
                          width: 60.h,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.r),
                            child: Image.network(
                              "https://source.unsplash.com/random/$index",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Product Name",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: ColorConst.primaryBlack),
                              ),
                              Text(
                                "Product Subtitle",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: ColorConst.secDarkGrey),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "\$150",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: ColorConst.primaryBlack
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.w),
                          child: const Icon(Icons.arrow_forward_ios),
                        ),
                      ]),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: 10),
          ),
          BigButtonWidget(text: "Add to Cart"),
        ],
      ),
    );
  }
}
