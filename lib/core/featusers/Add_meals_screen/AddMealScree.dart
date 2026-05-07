import 'package:app_menu/core/featusers/HomeScreen/homeScreen.dart';
import 'package:app_menu/core/featusers/HomeScreen/widget/data/db_helpr/db_helper.dart';
import 'package:app_menu/core/featusers/HomeScreen/widget/data/mail_model.dart';
import 'package:app_menu/core/routering/App_routering.dart';
import 'package:app_menu/core/style/App_color.dart';
import 'package:app_menu/core/style/widget/Primary_button_widget.dart';
import 'package:app_menu/core/style/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Addmealscree extends StatefulWidget {
  const Addmealscree({super.key});

  @override
  State<Addmealscree> createState() => _AddmealscreeState();
}

class _AddmealscreeState extends State<Addmealscree> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController mealName = TextEditingController();
  TextEditingController mealImage = TextEditingController();
  TextEditingController mealRate = TextEditingController();
  TextEditingController mealTime = TextEditingController();
  TextEditingController mealDescription = TextEditingController();
  

  DataBaseHelper dataBaseHelper = DataBaseHelper.instance;
  bool isLoop = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: const Color.fromARGB(255, 154, 170, 12),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Add Meals",
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: isLoop
                ? Center(
                    child: CircularProgressIndicator(
                      color: AppColor.primaryColor,
                    ),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Meal Name",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                      CustomTextField(
                          icons: Icon( Icons.fastfood_outlined,color: AppColor.primaryColor,),
                        controller: mealName,
                        nameField: " Meal Name",

                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please add Meal Name";
                          } 
                          return null;
                        },
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        "image URL",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                      CustomTextField(
                        icons: Icon( Icons.image_outlined,color: AppColor.primaryColor,),
                        controller: mealImage,
                        nameField: " URL",

                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please add Meal Name";
                          } 
                          return null;
                        },
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        "Rate",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                      CustomTextField(
                          icons: Icon( Icons.star_outlined,color: AppColor.primaryColor,),
                        controller: mealRate,
                        nameField: " 4.6",
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please add Meal Rate ";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        "Time",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                      CustomTextField(
                        controller: mealTime,
  icons: Icon( Icons.timer_outlined,color: AppColor.primaryColor,),
                        nameField: "20-30",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please add Time Meal ";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        
                        "Description",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                      CustomTextField(
                          icons: Icon( Icons.description_outlined,color: AppColor.primaryColor,),
                        controller: mealDescription,
                        maxLine: 8,

                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please add Meal Description";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 100.h),

                      PrimaryButtonWidget(
                        bordersRadius: 100,

                        buttonText: "Save",
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                          
                            isLoop == true;
                            setState(() {
                              GoRouter.of(
                                context,
                              ).pushReplacementNamed(AppRouter.HomeScreen);
                            });
                            Meal meal = Meal(
                              rate: double.parse(mealRate.text),
                              name: mealName.text,
                              time: mealTime.text,
                              discretion: mealDescription.text,
                              image: mealImage.text,
                            );
                            dbHelper.insertMeal(meal).then((value) {});
                          }
                        },
                      ),
                      SizedBox(height: 20.h,)
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
