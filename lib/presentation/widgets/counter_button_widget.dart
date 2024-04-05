import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CounterButtonWidget extends StatelessWidget {
  void Function() onPressed;
  IconData icon;
  CounterButtonWidget({super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(0.h),
        side: const BorderSide(color: ColorConst.primaryBlue),
      ),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
