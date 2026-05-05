import 'package:app_menu/core/featusers/HomeScreen/widget/data/mail_model.dart';

import 'package:app_menu/core/style/App_color.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Mealdetailsscreen extends StatelessWidget {
  final Meal meal;
  const Mealdetailsscreen({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.sp),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: Image.network(
                meal.image,

                fit: BoxFit.cover,

                width: double.infinity.w,
                height: 327.h,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.all(24.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  meal.name,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 24.sp,
                  ),
                ),
                SizedBox(height: 21.h),

                Container(
                  height: 35.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColor.primaryColor.withOpacity(0.10),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/Subtract.svg"),
                            Text(
                              meal.time,
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 230),
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/Star 6.svg"),
                          ],
                        ),
                        Text(
                          meal.rate.toString(),

                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 27.h),

                Divider(),
                Text(
                  "Description",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  meal.discretion,
                  style: GoogleFonts.inter(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(224, 114, 112, 112),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
