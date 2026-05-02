import 'package:app_menu/core/style/AppTextStyle.dart';
import 'package:app_menu/core/style/App_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Topscreen extends StatelessWidget {
  const Topscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/image/image 34.png"),
        Positioned(
          left: 45,
          bottom: 20.h,
          child: Container(
            width: 188.w,
            height: 186.h,
            padding: EdgeInsets.all(17.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48.r),
              color: AppColor.primaryColor.withOpacity(0.10),
            ),
            child: Center(
              child: Text(
                textAlign: TextAlign.left,
                "Welcome Add A New Recipe",
                style: Apptextstyle.onBoardingTitle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
