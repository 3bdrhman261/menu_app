import 'package:app_menu/core/featusers/HomeScreen/widget/data/db_helpr/db_helper.dart';
import 'package:app_menu/core/featusers/HomeScreen/widget/data/mail_model.dart';
import 'package:app_menu/core/featusers/OnBoarding_screen/widget/onborading_syrver.dart';
import 'package:app_menu/core/routering/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  DataBaseHelper dataBaseHelper = DataBaseHelper.instance;
  dataBaseHelper.insertMeal(
    Meal(
      rate: 2.8,
      name: "MAK",
      time: "20-84",
      discretion: "discretion",
      image: "assets/image/Image (2).png",
    ),
  );
  dataBaseHelper.insertMeal(
    Meal(
      rate: 2.8,
      name: "MAK",
      time: "20-84",
      discretion: "discretion",
      image: "assets/image/Image (2).png",
    ),
  );
  dataBaseHelper.insertMeal(
    Meal(
      rate: 3.6,
      name: "llll",
      time: "20-40",
      discretion: "discretion",
      image: "assets/image/Image (2).png",
    ),
  );
  dataBaseHelper.insertMeal(
    Meal(
      rate: 8.8,
      name: "jjjjj",
      time: "2-4",
      discretion: "discretion",
      image: "assets/image/Image (2).png",
    ),
  );
  dataBaseHelper.insertMeal(
    Meal(
      rate: 5.2,
      name: "ccc",
      time: "2-84",
      discretion: "discretion",
      image: "assets/image/Image (2).png",
    ),
  );

  await OnboradingSyrver.inshalizshanSharedPreferences();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) {
        return MaterialApp.router(title: "", routerConfig: RouterConf.goRoute);
      },
    );
  }
}
