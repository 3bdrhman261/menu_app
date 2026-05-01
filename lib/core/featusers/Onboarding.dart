import 'package:app_menu/core/routering/App_routering.dart';
import 'package:app_menu/core/style/AppTextStyle.dart';
import 'package:app_menu/core/style/App_color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
    "Add Your Meals and its Ingredients and we will save it for you",
    "the best choice for your kitchen do not hesitate",
    "All the best restaurants and their top menus are ready for you",
  ];
  int currentIndex = 0;

  CarouselSliderController controler = CarouselSliderController();

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
              right: 30,
              left: 30,
              bottom: 30.h,

              child: Container(
                width: 350.w,
                height: 410.h,
                padding: EdgeInsets.all(17.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.r),
                  color: AppColor.primaryColor.withOpacity(0.9),
                ),

                child: Column(
                  children: [
                    //   Padding(padding: EdgeInsetsGeometry.all(7)),
                    CarouselSlider(
                      carouselController: controler,
                      options: CarouselOptions(
                        height: 250.h,
                        viewportFraction: 0.9,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index.toInt();
                          });
                        },
                      ),

                      items: List.generate(titles.length, (index) {
                        return Builder(
                          builder: (BuildContext context) {
                            return SizedBox(
                              width: 230.w,

                              child: Column(
                                children: [
                                  Text(
                                    textAlign: TextAlign.center,
                                    titles[index],
                                    style: Apptextstyle.onBoardingTitle,
                                  ),
                                  SizedBox(height: 12.h),
                                  Text(
                                    textAlign: TextAlign.center,
                                    description[index],
                                    style: Apptextstyle.onBoardingdiscrbtino,
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }),
                    ),

                    DotsIndicator(
                      dotsCount: 3,
                      position: currentIndex.toDouble(),
                      decorator: DotsDecorator(
                        color: Color.fromARGB(255, 203, 203, 203),
                        activeColor: Colors.white,
                        size: Size(24, 6),
                        activeSize: const Size(24.0, 6.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),

                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onTap: (index) {
                        controler.animateToPage(index);

                        currentIndex = index;
                        setState(() {});
                      },
                    ),

              
                    Spacer(),
                    currentIndex >= 2
                        ? SizedBox.shrink()
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              InkWell(
                                onTap: () {
                                  GoRouter.of(
                                    context,
                                  ).pushReplacementNamed(AppRouter.HomeScreen);
                                },
                                child: Text(
                                  "skip",
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  if (currentIndex < 2) {
                                    currentIndex++;
                                    controler.animateToPage(currentIndex);
                                    setState(() {});
                                  }
                                },
                                child: Text(
                                  "Next",
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                    currentIndex < 2
                        ? SizedBox.shrink()
                        : Container(
                            width: 66.w,
                            height: 66.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            child: InkWell(
                              onTap: () {
                                GoRouter.of(
                                  context,
                                ).pushReplacementNamed(AppRouter.HomeScreen);
                              },
                              child: Icon(
                                Icons.arrow_forward,
                                color: AppColor.primaryColor,
                                size: 17.sp,
                              ),
                            ),
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
