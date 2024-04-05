import 'dart:core';

import 'package:ecommerce_app/presentation/core/constants/color_const.dart';
import 'package:ecommerce_app/presentation/core/resources/resources.dart';
import 'package:ecommerce_app/presentation/screens/settings/widgets/setting_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 15.h),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.r,
              backgroundImage: const NetworkImage(
                  'https://gibbonsgazette.org/wp-content/uploads/2022/10/Who-is-Andrew-Tate-e1667939153903-900x680.jpg'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: const Text(
                "Andrew Tate",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: ColorConst.primaryBlue),
              ),
            ),
            Text(
              "andrewtateTopG@tate.us",
              style: TextStyle(
                  fontSize: 16.sp,
                  color: ColorConst.primaryBlack,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text(
                "+821046896314",
                style:
                    TextStyle(fontSize: 16.sp, color: ColorConst.primaryBlack),
              ),
            ),
            
            SizedBox(
              height: 220.h,
              child: ListView.builder(
                itemCount: SettingsResources.labels.length,
                shrinkWrap: false,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                return InkWell(
                    onTap: () => Navigator.pushNamed(context, SettingsResources.routeNames[index]),
                    child:
                        SettingsButton(icon: SettingsResources.icons[index], text: SettingsResources.labels[index]));
              }),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              height: 45.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8.0.r),
              ),
              child: Center(
                child: Text("Log Out",
                    style: TextStyle(
                        color: ColorConst.primaryWhite, fontSize: 20.sp)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
