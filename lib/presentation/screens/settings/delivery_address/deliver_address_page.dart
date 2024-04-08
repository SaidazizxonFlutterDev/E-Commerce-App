import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:ecommerce_app/presentation/widgets/big_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryAddressPage extends StatelessWidget {
  const DeliveryAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delivery Address"),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Column(
              children: [
                Image.asset('assets/images/address.png'),
                Padding(
                  padding: EdgeInsets.only(top: 25.h),
                  child: Text(
                    "Select Your Location",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: ColorConst.primaryBlack),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: SizedBox(
                    width: 324.w,
                    child: Text(
                      "Swithch on your location to stay in tune with what’s happening in your area",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: ColorConst.primaryBlack,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )),
            Padding(
              padding: EdgeInsets.only(top: 50.h, bottom: 10.h),
              child: Text(
                "Your Zone",
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
            const SizedBox(
              width: 400,
              child:
                  DropdownMenu(hintText: "Select Region", dropdownMenuEntries: [
                DropdownMenuEntry(value: "Tashkent", label: "Tashkent"),
                DropdownMenuEntry(value: "Namangan", label: "Namangan"),
                DropdownMenuEntry(value: "Andijon", label: "Andijon"),
                DropdownMenuEntry(value: "Fergana", label: "Fergana"),
                DropdownMenuEntry(value: "Sirdaryo", label: "Sirdaryo"),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
              child: Text(
                "Your City",
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
            const SizedBox(
                width: 400,
                child:
                    DropdownMenu(hintText: "Select City", dropdownMenuEntries: [
                  DropdownMenuEntry(value: "Chust", label: "Chust"),
                  DropdownMenuEntry(value: "Pop", label: "Pop"),
                  DropdownMenuEntry(
                      value: "To'raqo'rg'on", label: "To'raqo'rg'on"),
                  DropdownMenuEntry(value: "Kosonsoy", label: "Kosonsoy"),
                ])),
            Center(child: BigButtonWidget(text: "Submit")),
          ],
        ),
      ),
    );
  }
}
