import 'package:app_menu/core/style/AppTextStyle.dart';
import 'package:app_menu/core/style/App_color.dart';
import 'package:app_menu/core/style/App_font.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<String> titles = [
    "Save Your Meals Ingredient",
    "Use Our App The Best Choice",
    "Our App Your Ultimate Choice",
  ];
  List<String> description = [
    "Add Your Meals and its Ingredients  and we will save it for you",
    "the best choice for your kitchen  do not hesitate",
    "All the best restaurants and their top menus are ready for you",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/image/image 39 (1).png",
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              right: 32,
              left: 32,
              bottom: 30.h,

              child: Container(
                width: 311.w,
                height: 400.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48.r),
                  color: AppColor.primaryColor.withOpacity(0.9),
                ),
                child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(height: 260.h),
                      items: titles.map((title) {
                        return Builder(
                          builder: (BuildContext context) {
                            return SizedBox(
                              width: 225.w,

                              child: Text(
                                textAlign:TextAlign.center,
                                title,
                                style: Apptextstyle.onBoardingTitle,
                                  
                                  
                                  
                                
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
