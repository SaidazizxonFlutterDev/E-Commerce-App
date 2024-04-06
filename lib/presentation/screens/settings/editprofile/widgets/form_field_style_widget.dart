import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class EditProfileFieldWidget extends StatelessWidget {
  IconData icon;
  TextFormField formField;
  EditProfileFieldWidget(
      {super.key, required this.icon, required this.formField});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h),
      child: Row(children: [
        Icon(icon, size: 30),
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: SizedBox(
            height: 50.h,
            width: MediaQuery.of(context).size.width * 0.8,
            child: formField,
          ),
        )
      ]),
    );
  }
}
