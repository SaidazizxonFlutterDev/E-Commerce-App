import 'package:ecommerce_app/data/models/allproducts_model.dart';
import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:ecommerce_app/presentation/widgets/big_button_widget.dart';
import 'package:ecommerce_app/presentation/widgets/product_counter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class HomeDetailPage extends StatefulWidget {
  AllProductsModel productsModel;
  HomeDetailPage({super.key, required this.productsModel});

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
                            widget.productsModel.images.last,
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
                  widget.productsModel.title,
                  style: TextStyle(
                      color: ColorConst.primaryBlack,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold),
                ),
                // SizedBox(height: 5.h),
                Text(
                  "\$ ${widget.productsModel.price.toString()}",
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
                    ProductCounterWidget(
                        removePressed: () {}, addPressed: () {}),
                  ],
                ),
                SizedBox(height: 8.h),
                Text(
                  widget.productsModel.description,
                  style:
                      TextStyle(fontSize: 16.sp, color: ColorConst.secDarkGrey),
                ),
                Divider(thickness: 2.h, height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BigButtonWidget(text: "Buy Now"),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        size: 35.h,
                        color: ColorConst.secGreen,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
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
