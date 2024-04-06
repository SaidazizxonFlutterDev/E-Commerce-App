import 'package:ecommerce_app/presentation/screens/settings/editprofile/widgets/form_field_style_widget.dart';
import 'package:ecommerce_app/presentation/screens/settings/editprofile/widgets/widget_title_widget.dart';
import 'package:ecommerce_app/presentation/widgets/big_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Profile")),
      body: Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 15.h),
      child: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          CircleAvatar(
            radius: 50.r,
            backgroundImage: const NetworkImage(
                'https://gibbonsgazette.org/wp-content/uploads/2022/10/Who-is-Andrew-Tate-e1667939153903-900x680.jpg'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.w),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  WidgetTitleWidget(text: "Change your name"),
                  EditProfileFieldWidget(
                      icon: Icons.person,
                      formField: TextFormField(
                        initialValue: 'Hichkimmmm',
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                      )),
                  WidgetTitleWidget(text: "Change password"),
                  EditProfileFieldWidget(
                      icon: Icons.password,
                      formField: TextFormField(
                        initialValue: 'Parolllll',
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                      )),
                  WidgetTitleWidget(text: "Change phone number"),
                  EditProfileFieldWidget(
                      icon: Icons.phone,
                      formField: TextFormField(
                        initialValue: '+821046896314',
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                      )),
                      Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: BigButtonWidget(text: "Confirm"),
                      ),
                ],
              ),
            ),
          )
        ]),
      ),
    ),
    );
  }
}