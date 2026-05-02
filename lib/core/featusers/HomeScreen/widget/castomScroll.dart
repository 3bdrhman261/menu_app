import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Castomscroll extends StatelessWidget {
  final String? title;
  final String? discretion;
  final String? image;
  const Castomscroll({super.key, this.image, this.discretion, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        
        child: Container(
        padding: EdgeInsets.all(9.sp),
        
          decoration: BoxDecoration(
            
            borderRadius: BorderRadius.circular(16.r),
          ),
        
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image ?? "",
                width: 137.w,
                height: 106.h,
              ),
        
              Center(
                child: Column(
        
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsetsGeometry.all(5)),
                    Text(
                      
                      title ?? "",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    ),
        
                    Row(
                      children: [
                        Padding(padding: EdgeInsetsGeometry.all(5)),
                        SvgPicture.asset("assets/icons/Star 6.svg"),
                        Text(
                           "4.9",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 40.w),
                        SvgPicture.asset("assets/icons/Subtract.svg"),
                        Text(
                           "20-30",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
        
             
        
            ],
          ),
        ),
      ),
    );

    // );
  }
}
