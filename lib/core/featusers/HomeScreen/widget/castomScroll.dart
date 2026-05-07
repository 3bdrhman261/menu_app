import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Castomscroll extends StatelessWidget {
  final String? name;
  final String? discretion;
  final String? time;
  final String? image;
  final double? rate;

  final Function()? onTap;
  const Castomscroll({
    super.key,
    this.image,
    this.discretion,
    this.name,
    this.onTap,
    this.time,
    this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.network(
                    image!,
                    fit: BoxFit.cover,
                    width: 137.w,
                    height: 106.h,
                  ),
                ),

                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsetsGeometry.all(5)),
                      Text(
                        name!,

                        maxLines: 1,
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
                            rate.toString(),
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 40.w),
                          SvgPicture.asset("assets/icons/Subtract.svg"),
                          Text(
                            time!,
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
      ),
    );

    // );
  }
}
