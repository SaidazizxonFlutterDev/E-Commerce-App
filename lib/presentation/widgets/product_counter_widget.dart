import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:ecommerce_app/presentation/widgets/counter_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ProductCounterWidget extends StatelessWidget {
  void Function() removePressed;
  void Function() addPressed;
  ProductCounterWidget({super.key, required this.removePressed, required this.addPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CounterButtonWidget(onPressed: removePressed, icon: Icons.remove),
        SizedBox(width: 10.w),
        Text("1",
            style: TextStyle(
                color: ColorConst.primaryBlue,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold)),
        SizedBox(width: 10.w),
        CounterButtonWidget(onPressed: addPressed, icon: Icons.add)
      ],
    );
  }
}
