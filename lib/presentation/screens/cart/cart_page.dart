import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:ecommerce_app/presentation/widgets/big_button_widget.dart';
import 'package:ecommerce_app/presentation/widgets/product_counter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 470.h,
            child: ListView.separated(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 120.w,
                          width: 120.w,
                          decoration: BoxDecoration(
                              color: ColorConst.primaryBlue,
                              borderRadius: BorderRadius.circular(8.r)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                                "https://source.unsplash.com/random/$index",
                                fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.w),
                          child: Column(
                            children: [
                              Text(
                                "Product Name",
                                style: TextStyle(
                                    color: ColorConst.primaryBlack,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Quantity",
                                style: TextStyle(
                                  color: ColorConst.primaryBlack,
                                  fontSize: 14.sp,
                                ),
                              ),
                              ProductCounterWidget(
                                  removePressed: () {}, addPressed: () {})
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.delete,
                                    color: ColorConst.secRed),
                              ),
                              Text(
                                "\$ 500",
                                style: TextStyle(
                                    color: ColorConst.primaryBlue,
                                    fontSize: 16.sp),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: ((context, index) => Divider(
                      thickness: 1.h,
                    )),
                itemCount: 10),
          ),
          Divider(thickness: 3.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigButtonWidget(text: "Checkout"),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                        color: ColorConst.secDarkGrey, fontSize: 16.sp),
                  ),
                  Text(
                    "\$ 5000",
                    style: TextStyle(
                        color: ColorConst.primaryBlue,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
