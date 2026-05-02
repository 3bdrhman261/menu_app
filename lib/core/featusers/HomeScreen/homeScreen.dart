import 'package:app_menu/core/featusers/HomeScreen/widget/castomScroll.dart';
import 'package:app_menu/core/featusers/HomeScreen/widget/topscreen.dart';
import 'package:app_menu/core/routering/App_routering.dart';
import 'package:app_menu/core/style/App_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Topscreen(),

            SizedBox(height: 25.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 9.sp),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.sp),
                    child: Text(
                      "Your Food",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.h),
            Expanded(
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,

                  mainAxisSpacing: 30.sp,
                  crossAxisSpacing: 1.sp,
                ),
                itemBuilder: (context, index) {
                  return Castomscroll(
                    image: "assets/image/Image (1).png",
                    title: "bbbb",
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 310.sp),
              child: FloatingActionButton(
                shape: CircleBorder(),
                onPressed: () {},
                backgroundColor: AppColor.primaryColor,
                child: Icon(Icons.add, color: Colors.white, size: 30.sp),
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
