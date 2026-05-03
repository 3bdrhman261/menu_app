import 'package:app_menu/core/featusers/HomeScreen/widget/castomScroll.dart';
import 'package:app_menu/core/featusers/HomeScreen/widget/data/db_helpr/db_helper.dart';
import 'package:app_menu/core/featusers/HomeScreen/widget/data/mail_model.dart';
import 'package:app_menu/core/featusers/HomeScreen/widget/topscreen.dart';
import 'package:app_menu/core/routering/App_routering.dart';
import 'package:app_menu/core/style/App_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

DataBaseHelper dbHelper = DataBaseHelper.instance;

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    dbHelper.getMeals().then((meals) {
      print("melassssssssssssssssssssssssssssssssssssssss $meals");
    });
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
              child: FutureBuilder(
                future: dbHelper.getMeals(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: AppColor.primaryColor,
                      ),
                    );
                  } else if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return Center(child: Text("No Meals found "));
                    }
                    return GridView.builder(
                      itemCount: snapshot.data!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20.sp,
                        crossAxisSpacing: 1.sp,
                      ),
                      itemBuilder: (context, index) {
                        Meal meal = snapshot.data![index];

                        return Castomscroll(
                          name: meal.name,
                          image: meal.image,
                          time: meal.time,
                          discretion: meal.discretion,
                          rate: meal.rate,
                          onTap: () {
                            setState(() {});
                          },
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text("${snapshot.error}"));
                  }
                  return Column();
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {},
          backgroundColor: AppColor.primaryColor,
          child: Icon(Icons.add, color: Colors.white, size: 30.sp),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
