import 'package:app_menu/core/featusers/HomeScreen/widget/data/db_helpr/db_helper.dart';
import 'package:app_menu/core/featusers/OnBoarding_screen/widget/onborading_syrver.dart';
import 'package:app_menu/core/routering/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await OnboradingSyrver.inshalizshanSharedPreferences();
  DataBaseHelper dataBaseHelper = DataBaseHelper.instance;
  
  await dataBaseHelper.deleteMealByName("Fries");

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
