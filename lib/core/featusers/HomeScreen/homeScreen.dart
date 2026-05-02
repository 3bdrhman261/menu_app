import 'package:app_menu/core/style/AppTextStyle.dart';
import 'package:app_menu/core/style/App_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            Container(
              width: double.infinity,
              height: double.infinity,

              child: Stack(
                children: [
                  Image.asset(
                    "assets/image/image 34.png",
                    //width: 500.w,
              
                   // height: 662.h,
                  ),
              
                  Positioned(
                    //    top: 90,
                    //  right: 167,
                     left: 45,
                    bottom:50 .h,
                    child: Container(
                      width: 188.w,
                      height: 186.h,
                      padding: EdgeInsets.all(17.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48.r),
                        color: AppColor.primaryColor.withOpacity(0.8),
                      ),
              
                      child: Center(
                        child: Text(
                          "Welcome\nAdd A New Recipe",
                          style: Apptextstyle.onBoardingTitle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
